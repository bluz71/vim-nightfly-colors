#include <iostream>
#include <sstream>

#include <string>

#include "xmlRead.h"
#include "GeometryReader.h"
#include "MeshReader.h"


/****************************************************************************/

// Constants used in the implementation of the API.  The most natural thing
// would usually be to place these with the classes that use them, but
// we want to keep them out of v8.h because it is an externally
// visible file.
class Consts {
    public:
        enum TemplateType {
            FUNCTION_TEMPLATE = 0,
            OBJECT_TEMPLATE = 1
        };
};

class DateClass
{
public:
    static int single;
    int m_year;
    int m_month;
    int m_day;

    void print()
    {
        std::cout << m_year << '/' << m_month << '/' << m_day;
    }
};

template <typename T>
inline T ToCData(v8::internal::Object* obj);

template <>
inline v8::internal::Address ToCData(v8::internal::Object* obj);

template <typename T>
inline v8::internal::Handle<v8::internal::Object> FromCData(
        v8::internal::Isolate* isolate, T obj);

template <>
inline v8::internal::Handle<v8::internal::Object> FromCData(
        v8::internal::Isolate* isolate, v8::internal::Address obj);

class ApiFunction {
    public:
        explicit ApiFunction(v8::internal::Address addr) : addr_(addr) { }
        v8::internal::Address address() { return addr_; }
    private:
        v8::internal::Address addr_;
};

class FooSkeletonReader
{
    std::ostream& errors;

    public:
    FooSkeletonReader(std::ostream& e) : errors(e) {}
    void parse(XmlNode& root)
    {
        this;
    }

    bool write(std::ostream& os)
    {
        return true;
    }
};

/****************************************************************************/
void parseStory (XmlNode& node)
{
    for (XmlNode cur=node.firstChild() ; cur ; cur=cur.nextSibling())
    {
        if (cur.isName("keyword"))
        {
            std::string key = cur.getString();
            std::cout << "keyword: " << key << std::endl;
        }
    }
}

void parseDocument(const char *filename)
{
    XmlDocument doc(filename);

    if (!doc)
    {
        std::cerr << "Document not parsed successfully." << std::endl;
        return;
    }

    XmlNode root(doc);
    if (!root)
    {
        std::cerr << "Empty document." << std::endl;
        return;
    }

    if (root.isName("mesh"))
    {
        MeshParameters defaults;
        FooMeshReader mesh(std::cerr, defaults);
        mesh.parseMesh(root);
        mesh.write(std::cout);
    }
    else if (root.isName("skeleton"))
    {
        FooSkeletonReader skel(std::cerr);
        skel.parse(root);
        skel.write(std::cout);
    }
    else
    {
        std::cerr << "Unsupported XML file." << std::endl;
    }
}

int main(int argc, char **argv)
{
    if (argc <= 1)
    {
        std::cerr << "Usage: " << argv[0] << " file.xml" << std::endl;
        return -1;
    }

    const char* filename = argv[1];
    parseDocument(filename);

    return 0;
}
