" indentline options
let g:indentLine_char = '|'

" NERDTree options
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
let g:NERDTreeWinSize = 25

" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter *
            \ if argc() == 1
            \ && isdirectory(argv()[0])
            \ && !exists('s:std_in') |
                \ execute 'NERDTree' argv()[0]
                \ | wincmd p | enew | execute 'cd '.argv()[0]
            \ | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror

" emmet options
let g:user_emmet_leader_key=','         " redefine trigger key
let g:user_emmet_install_global=0       " disable for all filetypes
autocmd FileType html,css,htmldjango EmmetInstall  " enable just for html/css

" coc.nvim config
let g:coc_global_extensions = [
            \ 'coc-emmet',
            \ 'coc-css',
            \ 'coc-html',
            \ 'coc-json',
            \ 'coc-prettier',
            \ 'coc-tsserver',
            \ 'coc-eslint',
            \ 'coc-jedi'
        \ ]

" air-line options
set noshowmode
let g:airline_extensions = [
            \ 'branch',
            \ 'tabline',
            \ 'hunks',
            \ 'virtualenv',
            \ 'tagbar',
            \ 'clock'
        \ ]
let g:airline_powerline_fonts = 1
let g:airline#extensions#clock#format = '%H:%M:%S'

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

" nerdtree-git
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusShowIgnored = 1

" Tagbar
let g:tagbar_width = 40
