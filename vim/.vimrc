" _          _        _         _   _         _            _      
"/\ \    _ / /\      /\ \      /\_\/\_\ _    /\ \        /\ \     
"\ \ \  /_/ / /      \ \ \    / / / / //\_\ /  \ \      /  \ \    
" \ \ \ \___\/       /\ \_\  /\ \/ \ \/ / // /\ \ \    / /\ \ \   
" / / /  \ \ \      / /\/_/ /  \____\__/ // / /\ \_\  / / /\ \ \  
" \ \ \   \_\ \    / / /   / /\/________// / /_/ / / / / /  \ \_\ 
"  \ \ \  / / /   / / /   / / /\/_// / // / /__\/ / / / /    \/_/ 
"   \ \ \/ / /   / / /   / / /    / / // / /_____/ / / /          
"    \ \ \/ /___/ / /__ / / /    / / // / /\ \ \  / / /________   
"     \ \  //\__\/_/___\\/_/    / / // / /  \ \ \/ / /_________\  
"      \_\/ \/_________/        \/_/ \/_/    \_\/\/____________/ 

"______ _             _           
"| ___ \ |           (_)          
"| |_/ / |_   _  __ _ _ _ __  ___ 
"|  __/| | | | |/ _` | | '_ \/ __|
"| |   | | |_| | (_| | | | | \__ \
"\_|   |_|\__,_|\__, |_|_| |_|___/
"                __/ |            
"               |___/           
"
    call plug#begin('~/.vim/plugged')
    Plug 'ledger/vim-ledger'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ackyshake/VimCompletesMe'
    Plug 'sts10/vim-pink-moon'  
    Plug 'morhetz/gruvbox'  
    Plug 'dense-analysis/ale'
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    Plug 'kien/ctrlp.vim'
    Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
    Plug 'vimwiki/vimwiki'
    Plug 'christoomey/vim-titlecase'
    Plug 'ap/vim-css-color'
    Plug 'glts/vim-radical'
    Plug 'glts/vim-magnum'
    call plug#end()

    let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -os --exclude standard']
    let g:netrw_browse_split = 2
    let g:netrw_banner = 0
    let b:vcm_tab_complete = 'omni'
    let g:vimwiki_hl_headers = 1
    let g:livepreview_previewer = 'open -a Preview '

"______           _          
"| ___ \         (_)         
"| |_/ / __ _ ___ _  ___ ___ 
"| ___ \/ _` / __| |/ __/ __|
"| |_/ / (_| \__ \ | (__\__ \
"\____/ \__,_|___/_|\___|___/

    set exrc
    set secure 
    let mapleader = " "
    syntax on
    filetype plugin on
    " set termguicolors
    set relativenumber
    set number
    set guicursor=
    set nohlsearch
    set noerrorbells
    set hidden
    set tabstop=8 softtabstop=4
    set shiftwidth=4
    set autoindent
    filetype plugin indent on
    set expandtab
    set nowrap
    set noswapfile
    set nobackup
    set undodir=~/.vim/undodir
    set undofile
    set incsearch
    set ttimeoutlen=100
    set timeoutlen=1000
    set splitbelow splitright
    colorscheme gruvbox
    set background=dark
    hi Normal guibg=NONE ctermbg=NONE
    highlight LineNr guibg=NONE

" _____           _                 
"/  ___|         | |                
"\ `--. _   _ ___| |_ ___ _ __ ___  
" `--. \ | | / __| __/ _ \ '_ ` _ \ 
"/\__/ / |_| \__ \ ||  __/ | | | | |
"\____/ \__, |___/\__\___|_| |_| |_|
"        __/ |                      
"       |___/

    if !exists("g:os")
        if has("win64") || has("win32") || has("win16")
            let g:os = "Windows"
        else
            let g:os = substitute(system('uname'), '\n', '', '')
        endif
    endif

    if g:os != "Windows"
        if empty(glob('~/.vim/autoload/plug.vim'))
            silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
              \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
            autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
        endif
    endif


" _    _ _ _    _     
"| |  | (_) |  (_)    
"| |  | |_| | ___ ___ 
"| |/\| | | |/ / / __|
"\  /\  / |   <| \__ \
" \/  \/|_|_|\_\_|___/
    
    autocmd FileType markdown,rmd set wrap

    let master = {}
    let master.name = 'master'
    let master.path = '~/notes/'
    let master.path_html = '~/notes_html/'
    let master.syntax = 'markdown'
    let master.ext = '.md'
    let master.custom_wiki2html = 'vimwiki_markdown'

    let books = {}
    let books.name = 'books'
    let books.path = '~/notes/books/'
    let books.path_html = '~/notes_html/books/'
    let books.syntax = 'markdown'
    let books.ext = '.md'
    let books.custom_wiki2html = 'vimwiki_markdown'

    let thesis = {}
    let thesis.name = 'thesis'
    let thesis.path = '~/notes/thesis/'
    let thesis.path_html = '~/notes_html/thesis/'
    let thesis.syntax = 'markdown'
    let thesis.ext = '.md'
    let thesis.custom_wiki2html = 'vimwiki_markdown'
    
    let misc = {}
    let misc.name = 'misc'
    let misc.path = '~/notes/misc/'
    let misc.path_html = '~/notes_html/misc/'
    let misc.syntax = 'markdown'
    let misc.ext = '.md'
    let misc.custom_wiki2html = 'vimwiki_markdown'

    let g:vimwiki_list = [master, books, thesis, misc]
    let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
    let g:vimwiki_create_link=0

"___  ___                  _                 
"|  \/  |                 (_)                
"| .  . | __ _ _ __  _ __  _ _ __   __ _ ___ 
"| |\/| |/ _` | '_ \| '_ \| | '_ \ / _` / __|
"| |  | | (_| | |_) | |_) | | | | | (_| \__ \
"\_|  |_/\__,_| .__/| .__/|_|_| |_|\__, |___/
"             | |   | |             __/ |    
"             |_|   |_|            |___/     

    nnoremap <leader>h :wincmd h<CR>
    nnoremap <leader>j :wincmd j<CR>
    nnoremap <leader>k :wincmd k<CR>
    nnoremap <leader>l :wincmd l<CR>
    nnoremap <leader>u :UndotreeShow<CR>
    nnoremap <leader>pv :wincmd v<bar> :Ex <bar>:vertical resize 30<CR>
    nnoremap <leader>ps :Rg<SPACE>
    nnoremap <silent> <leader>+ :vertical resize +5<CR>
    nnoremap <silent> <leader>- :vertical resize -5<CR>
   
    let g:limelight_conceal_ctermfg = 'DarkGray'  
    autocmd! User GoyoEnter Limelight
    autocmd! User GoyoLeave Limelight!
    autocmd  User GoyoLeave hi Normal guibg=NONE ctermbg=NONE
    map <leader>f :Goyo \| set linebreak<CR>

	map <leader>o :setlocal spell! spelllang=en_au<CR>

    inoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
	vnoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
	map <Space><Tab> <Esc>/<++><Enter>"_c4l

" _____       _                  _       
"/  ___|     (_)                | |      
"\ `--. _ __  _ _ __  _ __   ___| |_ ___ 
" `--. \ '_ \| | '_ \| '_ \ / _ \ __/ __|
"/\__/ / | | | | |_) | |_) |  __/ |_\__ \
"\____/|_| |_|_| .__/| .__/ \___|\__|___/
"              | |   | |                 
"              |_|   |_|         

"""LATEX
	" Word count:
        autocmd Filetype tex setl updatetime=1
	autocmd FileType tex map <F3> :w !detex \| wc -w<CR>
	autocmd FileType tex inoremap <F3> <Esc>:w !detex \| wc -w<CR>

	" Code snippets
	autocmd FileType tex inoremap ,fr \begin{frame}<Enter>\frametitle{}<Enter><Enter><++><Enter><Enter>\end{frame}<Enter><Enter><++><Esc>6kf}i
	autocmd FileType tex inoremap ,fi \begin{fitch}<Enter><Enter>\end{fitch}<Enter><Enter><++><Esc>3kA
	autocmd FileType tex inoremap ,exe \begin{exe}<Enter>\ex<Space><Enter>\end{exe}<Enter><Enter><++><Esc>3kA
	autocmd FileType tex inoremap ,em \emph{}<++><Esc>T{i
	autocmd FileType tex inoremap ,bf \textbf{}<++><Esc>T{i
	autocmd FileType tex vnoremap , <ESC>`<i\{<ESC>`>2la}<ESC>?\\{<Enter>a
	autocmd FileType tex inoremap ,it \textit{}<++><Esc>T{i
	autocmd FileType tex inoremap ,ct \textcite{}<++><Esc>T{i
	autocmd FileType tex inoremap ,cp \parencite{}<++><Esc>T{i
	autocmd FileType tex inoremap ,glos {\gll<Space><++><Space>\\<Enter><++><Space>\\<Enter>\trans{``<++>''}}<Esc>2k2bcw
	autocmd FileType tex inoremap ,x \begin{xlist}<Enter>\ex<Space><Enter>\end{xlist}<Esc>kA<Space>
	autocmd FileType tex inoremap ,ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Space>
	autocmd FileType tex inoremap ,ul \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item<Space>
	autocmd FileType tex inoremap ,li <Enter>\item<Space>
	autocmd FileType tex inoremap ,ref \ref{}<Space><++><Esc>T{i
	autocmd FileType tex inoremap ,fn \footnote{}<Space><++><Esc>T{i
	autocmd FileType tex inoremap ,su \textsuperscript{}<Space><++><Esc>T{i
	autocmd FileType tex inoremap ,tab \begin{tabular}<Enter><++><Enter>\end{tabular}<Enter><Enter><++><Esc>4kA{}<Esc>i
	autocmd FileType tex inoremap ,ot \begin{tableau}<Enter>\inp{<++>}<Tab>\const{<++>}<Tab><++><Enter><++><Enter>\end{tableau}<Enter><Enter><++><Esc>5kA{}<Esc>i
	autocmd FileType tex inoremap ,can \cand{}<Tab><++><Esc>T{i
	autocmd FileType tex inoremap ,con \const{}<Tab><++><Esc>T{i
	autocmd FileType tex inoremap ,v \vio{}<Tab><++><Esc>T{i
	autocmd FileType tex inoremap ,a \href{}{<++>}<Space><++><Esc>2T{i
	autocmd FileType tex inoremap ,sc \textsc{}<Space><++><Esc>T{i
	autocmd FileType tex inoremap ,chap \chapter{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ,sec \section{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ,ssec \subsection{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ,sssec \subsubsection{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ,st <Esc>F{i*<Esc>f}i
	autocmd FileType tex inoremap ,beg \begin{DELRN}<Enter><++><Enter>\end{DELRN}<Enter><Enter><++><Esc>4k0fR:MultipleCursorsFind<Space>DELRN<Enter>c
	autocmd FileType tex inoremap ,up <Esc>/usepackage<Enter>o\usepackage{}<Esc>i
	" autocmd FileType tex nnoremap ,up /usepackage<Enter>o\usepackage{}<Esc>i
	autocmd FileType tex inoremap ,tt \texttt{}<Space><++><Esc>T{i
	autocmd FileType tex inoremap ,bt {\blindtext}
	autocmd FileType tex inoremap ,nu $\varnothing$
	autocmd FileType tex inoremap ,col \begin{columns}[T]<Enter>\begin{column}{.5\textwidth}<Enter><Enter>\end{column}<Enter>\begin{column}{.5\textwidth}<Enter><++><Enter>\end{column}<Enter>\end{columns}<Esc>5kA
	autocmd FileType tex inoremap ,rn (\ref{})<++><Esc>F}i

"""LATEX Logical symbols
	autocmd FileType tex inoremap ,m $$<Space><++><Esc>2T$i
	autocmd FileType tex inoremap ,M $$$$<Enter><Enter><++><Esc>2k$hi
	autocmd FileType tex inoremap ,neg {\neg}
	autocmd FileType tex inoremap ,V {\vee}
	autocmd FileType tex inoremap ,or {\vee}
	autocmd FileType tex inoremap ,L {\wedge}
	autocmd FileType tex inoremap ,and {\wedge}
	autocmd FileType tex inoremap ,ra {\rightarrow}
	autocmd FileType tex inoremap ,la {\leftarrow}
	autocmd FileType tex inoremap ,lra {\leftrightarrow}
	autocmd FileType tex inoremap ,fa {\forall}
	autocmd FileType tex inoremap ,ex {\exists}
	autocmd FileType tex inoremap ,dia	{\Diamond}
	autocmd FileType tex inoremap ,box	{\Box}
	autocmd FileType tex inoremap ,gt	{\textgreater}
	autocmd FileType tex inoremap ,lt	{\textless}
"""LaTeX Linguistics Shortcuts
	autocmd Filetype tex inoremap ,nom {\textsc{nom}}
	autocmd FileType tex inoremap ,acc {\textsc{acc}}
	autocmd FileType tex inoremap ,dat {\textsc{dat}}
	autocmd FileType tex inoremap ,gen {\textsc{gen}}
	autocmd FileType tex inoremap ,abl {\textsc{abl}}
	autocmd FileType tex inoremap ,voc {\textsc{voc}}
	autocmd FileType tex inoremap ,loc {\textsc{loc}}
	autocmd Filetype tex inoremap ,inst {\textsc{inst}}
	autocmd FileType tex inoremap ,tipa \textipa{}<Space><++><Esc>T{i

"""PHP/HTML
	autocmd FileType php,html inoremap ,b <b></b><Space><++><Esc>FbT>i
	autocmd FileType php,html inoremap ,i <em></em><Space><++><Esc>FeT>i
	autocmd FileType php,html inoremap ,h1 <h1></h1><Enter><Enter><++><Esc>2kf<i
	autocmd FileType php,html inoremap ,h2 <h2></h2><Enter><Enter><++><Esc>2kf<i
	autocmd FileType php,html inoremap ,h3 <h3></h3><Enter><Enter><++><Esc>2kf<i
	autocmd FileType php,html inoremap ,p <p></p><Enter><Enter><++><Esc>02kf>a
	autocmd FileType php,html inoremap ,a <a<Space>href=""><++></a><Space><++><Esc>14hi
	autocmd FileType php,html inoremap ,e <a<Space>target="_blank"<Space>href=""><++></a><Space><++><Esc>14hi
	autocmd FileType php,html inoremap ,ul <ul><Enter><li></li><Enter></ul><Enter><Enter><++><Esc>03kf<i
	autocmd FileType php,html inoremap ,li <Esc>o<li></li><Esc>F>a
	autocmd FileType php,html inoremap ,ol <ol><Enter><li></li><Enter></ol><Enter><Enter><++><Esc>03kf<i
	autocmd FileType php,html inoremap ,im <table<Space>class="image"><Enter><caption align="bottom"></caption><Enter><tr><td><a<space>href="pix/<++>"><img<Space>src="pix/<++>"<Space>width="<++>"></a></td></tr><Enter></table><Enter><Enter><++><Esc>4kf>a
	autocmd FileType php,html inoremap ,td <td></td><++><Esc>Fdcit
	autocmd FileType php,html inoremap ,tr <tr></tr><Enter><++><Esc>kf<i
	autocmd FileType php,html inoremap ,th <th></th><++><Esc>Fhcit
	autocmd FileType php,html inoremap ,tab <table><Enter></table><Esc>O
	autocmd FileType php,html inoremap ,gr <font color="green"></font><Esc>F>a
	autocmd FileType php,html inoremap ,rd <font color="red"></font><Esc>F>a
	autocmd FileType php,html inoremap ,yl <font color="yellow"></font><Esc>F>a
	autocmd FileType php,html inoremap ,dt <dt></dt><Enter><dd><++></dd><Enter><++><esc>2kcit
	autocmd FileType php,html inoremap ,dl <dl><Enter><Enter></dl><enter><enter><++><esc>3kcc
	"autocmd FileType php,html inoremap -- &ndash,
	"autocmd FileType php,html inoremap --- &mdash,


""".bib
	autocmd FileType bib inoremap ,a @article{<Enter>author<Space>=<Space>"<++>",<Enter>year<Space>=<Space>"<++>",<Enter>title<Space>=<Space>"<++>",<Enter>journal<Space>=<Space>"<++>",<Enter>volume<Space>=<Space>"<++>",<Enter>pages<Space>=<Space>"<++>",<Enter>}<Enter><++><Esc>8kA,<Esc>i
	autocmd FileType bib inoremap ,b @book{<Enter>author<Space>=<Space>"<++>",<Enter>year<Space>=<Space>"<++>",<Enter>title<Space>=<Space>"<++>",<Enter>publisher<Space>=<Space>"<++>",<Enter>}<Enter><++><Esc>6kA,<Esc>i
	autocmd FileType bib inoremap ,c @incollection{<Enter>author<Space>=<Space>"<++>",<Enter>title<Space>=<Space>"<++>",<Enter>booktitle<Space>=<Space>"<++>",<Enter>editor<Space>=<Space>"<++>",<Enter>year<Space>=<Space>"<++>",<Enter>publisher<Space>=<Space>"<++>",<Enter>}<Enter><++><Esc>8kA,<Esc>i

""" Markdown / Vimwiki
	autocmd Filetype markdown,rmd map <leader>w yiWi[<esc>Ea](<esc>pa)
        autocmd Filetype markdown,rmd nmap <leader>rl ds[f(df)
        autocmd Filetype markdown,rmd nmap <silent> <leader>Rn a<++><Esc>/<++><CR>"_c4l<Esc>gti[
        autocmd Filetype markdown,rmd nnoremap <leader>r_ a<++><Esc>vi[:s/\%V_/ /g<CR>/<++><CR>"_c4l<Esc>
        autocmd Filetype markdown,rmd nmap <leader>R_ a<++><Esc>vi[:s/\%V_/ /g<CR>/<++><CR>"_c4l<Esc>gti[
        autocmd Filetype markdown,rmd nmap <leader>cl] $vT]l+f(lgui(vi(:s/\%V /_/g<CR>f[
        autocmd Filetype markdown,rmd nmap <leader>cl. $vT.l+f(lgui(vi(:s/\%V /_/g<CR>f[
            
        autocmd Filetype markdown,rmd nmap <leader>cd :VimwikiAll2HTML!<CR> 
        autocmd Filetype markdown,rmd nmap <silent> <leader>cf :silent !python3 ~/.vim/scripts/fixwiki.py<CR>:redraw!<CR>
        " Stupid Link Shit
        " syntax: ,<L/link case><wiki:w,relative:r(optional)><underscores:_,none:n>
	autocmd Filetype markdown,rmd imap ,Ln <Esc>byiwysiw]f]pysiw)f)a<++><Esc>F[gti[
	" autocmd Filetype markdown,rmd nmap ,Ln yiwysiw]f]pysiw)f)a<++><Esc>F[gti[
	autocmd Filetype markdown,rmd imap ,L_ <Esc>byiwysiw]f]pysiw)f)a<++><Esc>F[<leader>R_
	" autocmd Filetype markdown,rmd nmap ,L_ <yiwysiw]f]pysiw)f)a<++><Esc>F[<leader>R_
	autocmd Filetype markdown,rmd imap ,ln <Esc>byiwysiw]f]pysiw)f)a<++><Esc>F[
	" autocmd Filetype markdown,rmd nmap ,ln yiwysiw]f]pysiw)f)a<++><Esc>F[
	autocmd Filetype markdown,rmd imap ,l_ <Esc>byiwysiw]f]pysiw)f)a<++><Esc>F[<leader>r_
	" autocmd Filetype markdown,rmd nmap ,l_ <yiwysiw]f]pysiw)f)a<++><Esc>F[<leader>r_
	autocmd Filetype markdown,rmd imap ,Lwn <Esc>byiwysiw]f]pysiw)awn.<++>:<Esc>f)a<++><Esc>F[gti[
	" autocmd Filetype markdown,rmd nmap ,Lwn yiwysiw]f]pysiw)awn.<++>:<Esc>f)a<++><Esc>F[gti[
	autocmd Filetype markdown,rmd imap ,Lw_ <Esc>byiwysiw]f]pysiw)awn.<++>:<Esc>f)a<++><Esc>F[<leader>R_
	" autocmd Filetype markdown,rmd nmap ,Lw_ <yiwysiw]f]pysiw)awn.<++>:<Esc>f)a<++><Esc>F[<leader>R_
	autocmd Filetype markdown,rmd imap ,lwn <Esc>byiwysiw]f]pysiw)awn.<++>:<Esc>f)a<++><Esc>F[
	" autocmd Filetype markdown,rmd nmap ,lwn yiwysiw]f]pysiw)awn.<++>:<Esc>f)a<++><Esc>F[
	autocmd Filetype markdown,rmd imap ,lw_ <Esc>byiwysiw]f]pysiw)awn.<++>:<Esc>f)a<++><Esc>F[<leader>r_
	" autocmd Filetype markdown,rmd nmap ,lw_ <yiwysiw]f]pysiw)awn.<++>:<Esc>f)a<++><Esc>F[<leader>r_
	autocmd Filetype markdown,rmd imap ,Lrn <Esc>byiwysiw]f]pysiw)a<++>/<Esc>f)a<++><Esc>F[gti[
	" autocmd Filetype markdown,rmd nmap ,Lrn yiwysiw]f]pysiw)a<++>/<Esc>f)a<++><Esc>F[gti[
	autocmd Filetype markdown,rmd imap ,Lr_ <Esc>byiwysiw]f]pysiw)a<++>/<Esc>f)a<++><Esc>F[<leader>R_
	" autocmd Filetype markdown,rmd nmap ,Lr_ <yiwysiw]f]pysiw)a<++>/<Esc>f)a<++><Esc>F[<leader>R_
	autocmd Filetype markdown,rmd imap ,lrn <Esc>byiwysiw]f]pysiw)a<++>/<Esc>f)a<++><Esc>F[
	" autocmd Filetype markdown,rmd nmap ,lrn yiwysiw]f]pysiw)a<++>/<Esc>f)a<++><Esc>F[
	autocmd Filetype markdown,rmd imap ,lr_ <Esc>byiwysiw]f]pysiw)a<++>/<Esc>f)a<++><Esc>F[<leader>r_
	" autocmd Filetype markdown,rmd nmap ,lr_ <yiwysiw]f]pysiw)a<++>/<Esc>f)a<++><Esc>F[<leader>r_
	autocmd Filetype markdown,rmd imap ,Lwrn <Esc>byiwysiw]f]pysiw)awn.<++>:<++>/<Esc>f)a<++><Esc>F[gti[
	" autocmd Filetype markdown,rmd nmap ,Lwrn yiwysiw]f]pysiw)awn.<++>:<++>/<Esc>f)a<++><Esc>F[gti[
	autocmd Filetype markdown,rmd imap ,Lwr_ <Esc>byiwysiw]f]pysiw)awn.<++>:<++>/<Esc>f)a<++><Esc>F[<leader>R_
	" autocmd Filetype markdown,rmd nmap ,Lwr_ <yiwysiw]f]pysiw)awn.<++>:<++>/<Esc>f)a<++><Esc>F[<leader>R_
	autocmd Filetype markdown,rmd imap ,lwrn <Esc>byiwysiw]f]pysiw)awn.<++>:<++>/<Esc>f)a<++><Esc>F[
	" autocmd Filetype markdown,rmd nmap ,lwrn yiwysiw]f]pysiw)awn.<++>:<++>/<Esc>f)a<++><Esc>F[
	autocmd Filetype markdown,rmd imap ,lwr_ <Esc>byiwysiw]f]pysiw)awn.<++>:<++>/<Esc>f)a<++><Esc>F[<leader>r_
	" autocmd Filetype markdown,rmd nmap ,lwr_ <yiwysiw]f]pysiw)awn.<++>:<++>/<Esc>f)a<++><Esc>F[<leader>r_
	autocmd Filetype markdown,rmd imap ,T_ 0<C-r>%<Space><Esc>dF.T/d0ysiW]<leader>R_ds]=o<Esc>
	autocmd Filetype markdown,rmd imap ,Tn 0<C-r>%<Space><Esc>dF.T/d0ysiW]gti[ds]=o<Esc>

	" autocmd Filetype markdown,rmd inoremap ,cwl
	" autocmd Filetype markdown,rmd inoremap ,crl
	autocmd Filetype markdown,rmd inoremap ,n ---<Enter><Enter>
	autocmd Filetype markdown,rmd inoremap ,b ****<++><Esc>F*hi
	autocmd Filetype markdown,rmd inoremap ,s ~~~~<++><Esc>F~hi
	autocmd Filetype markdown,rmd inoremap ,e **<++><Esc>F*i
	autocmd Filetype markdown,rmd inoremap ,h ====<Space><++><Esc>F=hi
	autocmd Filetype markdown,rmd inoremap ,i ![](<++>)<++><Esc>F[a
	autocmd Filetype markdown,rmd inoremap ,a [](<++>)<++><Esc>F[a
	autocmd Filetype markdown,rmd inoremap ,1 #<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap ,2 ##<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap ,3 ###<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap ,li --------<Enter>
	autocmd Filetype markdown map <F5> :!pandoc<space><C-r>%<space>-o<space><C-r>%.pdf<Enter><Enter>
	autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown),<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>
	autocmd Filetype rmd inoremap ,r ```{r}<CR>```<CR><CR><esc>2kO
	autocmd Filetype rmd inoremap ,p ```{python}<CR>```<CR><CR><esc>2kO

