set number
syntax on
set tabstop=4
set autoindent
set noexpandtab
set softtabstop=0
set shiftwidth=4
set nowrap
set splitright
set termwinsize=5x0

" Automatically closing pairs:
ino " ""<left>
ino ' ''<left>
ino ( ()<left>
ino [ []<left>
ino { {}<left>
ino {<CR> {<CR>}<ESC>O<Tab>

"THEME

set background=dark
let g:gruvbox_italic=1 "May not work well: works on xfce4-terminal, urxvt or gnome-terminal
colorscheme gruvbox
" AUR: vim-gruvbox-git vim-airline-gruvbox-git
" Or: curl https://raw.githubusercontent.com/morhetz/gruvbox/master/colors/gruvbox.vim > ~/.vim/colors/gruvbox.vim
" Font: Source Code Pro Semibold (AUR ttf-adobe-source-fonts)


"Use 24-bit (true-color)
if (has("termguicolors"))
	set termguicolors
endif

"FOLDS

autocmd FileType c setlocal foldmethod=syntax
"setlocal foldmethod=indent
"set foldnestmax=2
"open all folds when oppening file:
"autocmd BufWinEnter * silent! :%foldopen!

augroup remember_folds
    autocmd!
    autocmd BufWinLeave ?* mkview | filetype detect
    autocmd BufWinEnter ?* silent loadview | filetype detect
augroup END


"RELATED: configure git with GitHub token
"$ sudo pacman -Syu libsecret
"$ cd /usr/share/git/credential
"$ sudo make
"$ git config --global credential.helper /usr/share/git/credential/libsecret/git-credential-libsecret
"User: email
"Password: GitHub token (Settings/Developer settings)
