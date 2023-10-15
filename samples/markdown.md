Heading 1
=========

Heading 2
---------

### Heading 3

#### Heading 4

##### Heading 5

###### Heading 6

| Tables        | Are           | Cool  |
| ------------- |:-------------:| -----:|
| col 3 is      | right-aligned | $1600 |
| col 2 is      | centered      |   $12 |
| zebra stripes | are neat      |    $1 |

Installation
------------

Use your favoured plugin manager to install **bluz71/vim-moonfly-statusline**.

If using [vim-plug](https://github.com/junegunn/vim-plug) do the following:

1. Add `Plug 'bluz71/vim-moonfly-statusline'` to your _vimrc_
2. Run `:PlugInstall`
3. Click **Install** to install it
4. Click **Reload** to reload the Code

Options
-------

### g:moonflyWithGitBranchCharacter

_moonfly statusline_ supports Tim Pope's
[fugitive](https://github.com/tpope/vim-fugitive) plugin.

The `g:moonflyWithGitBranchCharacter` option specifies whether to display Git
branch details using the Unicode Git branch character `U+E0A0`. By default Git
branches displayed in the `statusline` will not use that character since many
monospace fonts will not contain it. However, some modern fonts, such as [Fira
Code](https://github.com/tonsky/FiraCode) and
[Iosevka](https://github.com/be5invis/Iosevka), do contain the Git branch
character.

If `g:moonflyWithGitBranchCharacter` is unset the default value from
the fugitive plugin will be used.

To display the Unicode Git branch character please add the following to your
_vimrc_:

```viml
let g:moonflyWithGitBranchCharacter = 1
```

License
-------

[MIT](https://opensource.org/licenses/MIT)
