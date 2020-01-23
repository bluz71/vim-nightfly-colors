# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

from __future__ import print_function

import fnmatch
import os
from pathlib import Path
import tempfile

import nox

class SomeClass:
    def create_arr(self): # An instance method
        self.arr = []

    def insert_to_arr(self, value):  #An instance method
        self.arr.append(value)

    @classmethod
    def class_method(cls):
        print("the class method was called")

def topo(G, ind=None, Q=[1]):
    if ind == None:
        ind = [0] * (len(G) + 1)  # this is a comment
        for u in G:
            for v in G[u]:
                ind[v] += 1
        Q = deque()
        for i in G:
            if ind[i] == 0:
                Q.append(i)
    if len(Q) == 0:
        return
    v = Q.popleft()
    print(v)
    for w in G[v]:
        ind[w] -= 1
        if ind[w] == 0:
            Q.append(w)
    topo(G, ind, Q)

# Get root of this repository. Assume we don't have directories nested deeper
# than 10 items.
p = Path(os.getcwd())
for i in range(10):
    if p is None:
        raise Exception("Unable to detect repository root.")
    if Path(p / ".git").exists():
        REPO_ROOT = str(p)
        break
    p = p.parent

#
# Helpers and utility functions
#


def _list_files(folder, pattern):
    """Lists all files below the given folder that match the pattern."""
    for root, folders, files in os.walk(folder):
        for filename in files:
            if fnmatch.fnmatch(filename, pattern):
                yield os.path.join(root, filename)


def _collect_dirs(
    start_dir,
    blacklist=set(["conftest.py", "noxfile.py", "lib", "third_party"]),
    suffix="requirements.txt",
    recurse_further=False,
):
    """Recursively collects a list of dirs that contain a file matching the
    given suffix.
    This works by listing the contents of directories and finding
    directories that have `"requirements.text` files.
    """
    # Collect all the directories that have tests in them.
    for parent, subdirs, files in os.walk(start_dir):
        if "./." in parent:
            continue  # Skip top-level dotfiles
        elif any(f for f in files if f.endswith(suffix) and f not in blacklist):
            # Don't recurse further for tests, since py.test will do that.
            if not recurse_further:
                del subdirs[:]
            # This dir has desired files in it. yield it.
            yield parent
        else:
            # Filter out dirs we don't want to recurse into
            subdirs[:] = [s for s in subdirs if s[0].isalpha() and s not in blacklist]


def _determine_local_import_names(start_dir):
    """Determines all import names that should be considered "local".
    This is used when running the linter to insure that import order is
    properly checked.
    """
    file_ext_pairs = [os.path.splitext(path) for path in os.listdir(start_dir)]
    return [
        basename
        for basename, extension in file_ext_pairs
        if extension == ".py"
        or os.path.isdir(os.path.join(start_dir, basename))
        and basename not in ("__pycache__")
    ]
