" Vim filetype detection
" Language:    MDX 
" Maintainer:  Finlay Cannon <fin AT finlaycannon DOT com> 
" URL:         http://github.com/findango/mdxdotvim
" Version:     1 
" Last Change: 3 June 2010

augroup mdxdetect
    au! BufRead,BufNewFile *.mdx setfiletype mdx 
augroup END 
     
