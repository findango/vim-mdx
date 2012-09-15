Syntax coloring for the MDX language (OLAP queries).

Installation
------------

If you don't have a preferred installation method, I recommend
installing [pathogen.vim](https://github.com/tpope/vim-pathogen), and
then simply copy and paste:

    cd ~/.vim/bundle
    git clone https://github.com/findango/mdxdotvim.git

Or you can manually copy the files:

    git clone https://github.com/findango/mdxdotvim.git
    cd mdxdotvim
    cp syntax/mdx.vim ~/.vim/syntax/
    cp ftdetect/mdx.vim ~/.vim/ftdetect/
    cp ftplugin/mdx.vim ~/.vim/ftplugin

Substitute ~/.vim/ with $HOME/vimfiles/ or $VIM/vimfiles/ on Windows.

