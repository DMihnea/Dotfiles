" Plugins

" 1) Auto Pairs
"	Autocompletes brackets:

		set runtimepath^=~/.vim/bundle/auto-pairs

" https://github.com/jiangmiao/auto-pairs


" 2) LightLine
"	 Makes status line useful: 

		set runtimepath^=~/.vim/bundle/lightline.vim

" https://github.com/itchyny/lightline.vim


" 3) NerdTree
"	 File Explorer inside Vim:

		set runtimepath^=~/.vim/bundle/nerdtree

" https://github.com/preservim/nerdtree


" 4) Vim-Surround
"	 Surrounds expressions and changes those surroundings:

		set runtimepath^=~/.vim/bundle/vim-surround

" https://github.com/tpope/vim-surround


" 5) Vim Multiple Cursors
"	 Multiple cursors in Vim:

		"set runtimepath^=~/.vim/bundle/vim-multiple-cursors

" https://github.com/terryma/vim-multiple-cursors


" 6) Vim-pywal
"	 Changes colorscheme based on wallpaper:

		colorscheme wal

" https://github.com/dylanaraps/wal.vim


" 7) Goyo
"	Centers the text in the window:

		set runtimepath^=~/.vim/bundle/goyo.vim

" https://github.com/junegunn/goyo.vim


" 8) Limelight
"	Dims all but your current paragraph: 

		set runtimepath^=~/.vim/bundle/limelight.vim

" https://github.com/junegunn/limelight.vim


" 9) Nerd Commenter
"	Makes commenting better:

		set runtimepath^=~/.vim/bundle/nerdcommenter

" https://github.com/preservim/nerdcommenter


" 10) Vim-snippets
"	Snippets for Vim:
	
		set runtimepath^=~/.vim/bundle/vim-snippets

" https://github.com/honza/vim-snippets


" 11) Ultisnips
"	Engine for snippets:

		set runtimepath^=~/.vim/bundle/ultisnips

" https://github.com/SirVer/ultisnips


" Some commands for this plugin:

"	Show the list of snippets matching with the filetype:

		let g:UltiSnipsListSnippets="<C-l>"

"	Create a new snippet, which opens in the proper snippet file:

		:nnoremap <C-n> :UltiSnipsEdit<CR>

"	When creating a new snippet,open the matching snippet file in a new tab:

		let g:UltiSnipsEditSplit="tabdo"		
	 		
" 12) Clever-F 
"	Extends f,t functionality:	

		set runtimepath^=~/.vim/bundle/clever-f.vim

" https://github.com/rhysd/clever-f.vim


"	Enables smart case:
		let g:clever_f_smart_case="1"

"	Fixing direction of search to be the same in every situation:
		let g:clever_f_fix_key_direction="1"

" 13) Vim Manpager
"	Opens manual pages in vim 
	
		set runtimepath^=~/.vim/bundle/vim-manpager

" https://github.com/lambdaalisue/vim-manpager


" 14) Vim DevIcons
"	Adds icons to vim

		set runtimepath^=~/.vim/bundle/vim-devicons

" https://github.com/ryanoasis/vim-devicons


" 15) Vim Rainbow levels
"	Changes the color based on indentation depth

		set runtimepath^=~/.vim/bundle/rainbow_levels.vim

" https://github.com/thiagoalessio/rainbow_levels.vim


" 16) Vim Numbers
"	Changes between relative and absolute numbering as you enter and exit insert mode

		set runtimepath^=~/.vim/bundle/numbers.vim

" https://github.com/myusuf3/numbers.vim


" 17) Fuzzy Finder
"	Useful search tool

		set runtimepath^=~/.fzf

" https://github.com/junegunn/fzf.vim


" 18) Vim Tex Conceal
"	Improved conceal for Tex in Vim	

		set runtimepath^=~/.vim/bundle/vim-tex-conceal

" https://github.com/PietroPate/vim-tex-conceal


" 19) VimTex
"	Latex tool for Vim

		set runtimepath^=~/.vim/bundle/vimtex

" https://github.com/lervag/vimtex


		let g:tex_flavor='latex'

"		Default pdf viewer

		let g:vimtex_view_method='zathura'
		let g:vimtex_quickfix_mode=0

"		Concealment of LaTex code
		set conceallevel=2
		let g:tex_conceal='abdgm'

" 20) Vim EasyMotion:
"	Makes motions more natural
	
		set runtimepath^=~/.vim/bundle/vim-easymotion

" https://github.com/easymotion/vim-easymotion

		
		let g:EasyMotion_smartcase = 1




" Basic Settings:

" Changing the colorscheme:

	"colorscheme molokai 
	colorscheme darkscene

" Numbers the lines:

	set number

" Makes Vim behave more natural: 

	set nocompatible

" Enables syntaxing:

	syntax enable       

" Enables indexing by the file type:

	filetype plugin indent on

" Highlights the screen line of the cursor: 

"	set cursorline

" Updatetime:

	set ut=1000

" Enhanced command-line completion: 

	set wildmode=longest,list,full

" Enables smart indeting for the file:

	set smartindent     

" Other indentation options:
	
	set tabstop=8
	set softtabstop=8
	set shiftwidth=8


" Removes the beeping sound:

	set vb

" Status line is active all the time:

	set laststatus=2

" Highlights search results:

	set hls

" While typing the searching pattern, Vim will highlight at every step the matching patterns:

	set is

" Ignores case sensitivity when searching

	set ic

" Overrides ignorecase when needed

	set scs

" Spellchecks for english:

	set spell spelllang=en_us

" Removes the text showing which mode you are in:

	"set noshowmode       

" Splits open how they should(at the bottom and right):

	set splitbelow splitright


" Keyboard maps :


"Leader key:

	let mapleader=" "
	
" For enabling Goyo:

	:nnoremap <leader>go :Goyo<CR>

" For exiting Goyo:
	
	:nnoremap <leader>gc :Goyo!<CR>

" For opening NERDTree:  

	:nnoremap <C-k> :NERDTree<CR> 

" For reloading current file:

	:nnoremap <leader>mv :w<CR>:so %<CR> 

" For opening .vimrc :

	:nnoremap mv :e ~/.vimrc<CR>

