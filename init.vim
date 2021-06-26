call plug#begin('~/.vim/plugged')
  Plug 'junegunn/goyo.vim'
  Plug 'christoomey/vim-tmux-navigator'

  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
  Plug 'christianchiarulli/nvcode-color-schemes.vim'

call plug#end()

" Write all buffers before navigating from Vim to tmux pane
let g:tmux_navigator_save_on_switch = 2

" configure treesitter
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
EOF
" configure nvcode-color-schemes
colorscheme nvcode " Or whatever colorscheme you make
let g:nvcode_termcolors=256
" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
    hi Normal ctermbg=NONE guibg=NONE
endif

filetype plugin indent on

set incsearch
set nohlsearch
set noshowmode
set noshowcmd
set noruler
set laststatus=1
set cmdheight=1
set rulerformat=%l:%c
set scrolloff=5
set shortmess+=FI
set nuw=4

set nu rnu
