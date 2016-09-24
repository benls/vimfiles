set encoding=utf-8
"Pathogen plugin manager
let g:pathogen_disabled = []
call add(g:pathogen_disabled, 'vim-airline')
call add(g:pathogen_disabled, 'vim-airline-themes')
call add(g:pathogen_disabled, 'nerdtree')
execute pathogen#infect()

"Status line
set laststatus=2

"Basic settings
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.yardoc/*,*.exe,*.so,*.dat,*/build/*,*/gen/*,*.bin
set wildignore+=*.o,*.o32,*.obj,*.pyc
set wildignore+=*.orig
syntax on
set hidden
set backspace=2
set noswapfile

"Tabs
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

""Airline plugin
"let g:airline_powerline_fonts = 1
"" Enable the list of buffers
"let g:airline#extensions#bufferline#enabled = 1
"set noshowmode

""Nerdtree plugin
"if has("gui_running")
"    autocmd vimenter * NERDTree
"endif

"Buffkill plugin
nnoremap <c-b> :BD<CR>

"color
colorscheme Tomorrow-Night-Eighties

"C Garmin indentation settings
set cindent
if has('win32') || has('win64')
    set cinoptions=>1s,e0,n0,f0,{1s,}0,^-s,L-1,:s,=s,l0,b0,gs,hs,ps,ts,is,+s,c3,C0,/0,(2s,us,U0,w0,W0,m0,j0,J0,)20,*70,#0
endif


"GUI
if has("gui_running")
    "GUI options
    set guioptions-=T
    set guioptions-=L

    "Cursors
    set guicursor=n-v-c:block-Cursor-blinkon0
    set guicursor+=ve:ver35-Cursor
    set guicursor+=o:hor50-Cursor-blinkwait175-blinkoff150-blinkon175
    set guicursor+=i-ci:ver20-Cursor
    set guicursor+=r-cr:hor20-Cursor
    set guicursor+=sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

    "Windows
    if has('win32') || has('win64')
        set guifont=Hack:h10:cANSI:qDEFAULT
        if (v:version == 704 && has("patch393")) || v:version > 704
            "set renderoptions=type:directx,level:0.75,gamma:1.25,contrast:0.25,
            "            \geom:1,renmode:5,taamode:1
            set rop=type:directx,gamma:1.0,contrast:0.5,level:1,geom:1,renmode:4,taamode:1
        endif
    endif
endif
