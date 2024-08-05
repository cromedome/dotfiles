"
" To make my own life easier, here's the list of keymappings provided by my
" setup:
"
" F1  - Toggle pastemode
" F2  - Toggle nvim-tree
" F3  - Toggle Tagbar
" F4  - Toggle undo buffer navigator
" F5  - Markdown drawer
" F6  - Toggle trouble
" F7  - Toggle TODOs
" F8  - Git diff
"
" (F11 is used by macOS to control Spaces)
"
" Other handy commands:
" ,space    - Find buffers (w/Telescope)
" Tab       - (visual mode) Indent selection
" Shift-Tab - (visual mode) Outdent selection
" Ctrl-A-#  - Switch to buffer #
" Ctrl-F    - Find in files
" Ctrl-G    - Find files (in git)
" Ctrl-R    - Redo
" =         - Auto-format with neoformat
" @         - Track cursor movement
" \#        - Repeat last search
" *         - Highlight current search
" a=        - Align list along = signs
" a>        - Align lists on the arrow operator (=>)
" a:        - Align lists on : (great for JSON!)
" Bd        - Delete current buffer, but keep the split open
" Y         - Yank to end of line
" ,,        - Unhighlight search matches
" ,c        - Comment the current selection (\\ works too!)
" ,f        - Find in files
" ,g        - Live grep
" ,j        - Join statement on single line
" ,jl       - Join lines
" ,ls       - List current directory contents
" ,la       - List current directory contents, including hidden files
" ,md       - Show the Markdown drawer
" ,nt       - Toggle nvim-tree
" ,pb       - Copy current file into clipboard/paste buffer (macOS only)
" ,pp       - Pretty-print with Carbon
" ,q        - Indent paragraph
" ,rd       - Re-format/re-wrap entire document
" ,rp       - Re-format/re-wrap current paragraph
" ,s        - Split statement to multiple lines
" ,S        - Use the current word under the cursor in a substitution.
" ,sf       - Format SQL to something readable
" ,sl       - Swap letters
" ,sp       - Toggle spell checking
" ,sw       - Swap words
" ,t        - Next tab
" ,T        - Previous tab
" ,tb       - Tagbar
" ,th       - Create a horizontally split terminal
" ,tr       - Trim trailing spaces, via TrailerTrash
" ,TR       - nvim-tree refresh
" ,tv       - Create a vertically split terminal
" ,ub       - Toggle undo buffer
" ,v        - Select text just pasted (handy for indent/outdent)
" ,w        - Highlight current word
" ,x        - Toggle TODO list
" ,xt       - Toggle TODO list in telescope
" ,xx       - Toggle Trouble
" ,yw       - Yank word starting at cursor
" :w!!      - Write as root
" ,leftarr  - Open split top left
" ,rightarr - Open split lower right
" ,uparr    - Open split top left
" ,dwnarrow - Open split lower right
" --e       - Insert CPAN email address
" --n       - Insert name
" --p       - Insert personal email address
" --r       - Insert revision tag
" --w       - Insert work email address
"
" Git specific commands:
" ,gd - git diff
" ,gD - git diff master
" ,gg - Toggle neogit
" ,gl - git log
" ,gm - Show git history under cursor
" ,gp - git push
" ,hp - Hunk preview
" ,hr - Reset hunk (n,v)
" ,hs - Stage hunk (n,v)
" ,hu - Undo stage hunk
" ,td - Toggle deleted hunk view
"
" Markdown specific commands:
" ,ght - Generate GitHub-friendly table of contents
" ,uc  - Update table of contents
" ,rc  - Remove table of contents
"
" Perl specific commands:
" ,pt  -  Run `perltidy` on current buffer
" ,pt  -  (visual mode) Run `perltidy` on selected lines
"
" JSON specific commands:
" aj  - Provide text object for outermost JSON object, array, string, number, or keyword
" gqaj- "pretty prints" (wraps/indents/sorts keys/otherwise cleans up) the JSON construct under the cursor
" gwaj- takes the JSON object on the clipboard and extends it into the JSON object under the cursor
"
" Other commands:
" :DirDiff - Get differences between dir1 and dir2
" :Lost    - LOST! LOST! MY PRECIOUS IS LOST! Find where I am at.
"
" Most of this was shamelessly stolen from hide, rjbs, Ovid, ptc or David Hand.
" Look at my repo on github for a list of plugins used.
"

" Plug Bundle Configuration {{{
call plug#begin('~/.config/nvim/plugged')

" the tpope section
Plug 'tpope/vim-jdaddy'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'

" Color themes
Plug 'folke/tokyonight.nvim'

" Telescope
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate' }
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons'

" nvim-tree
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'

" Trouble, todo
Plug 'folke/trouble.nvim'
Plug 'folke/todo-comments.nvim'

" Languages, code completion and linting
Plug 'w0rp/ale'
Plug 'elzr/vim-json'
Plug '~/.config/nvim/unplugged/sqlany'
"Plug '~/.config/nvim/unplugged/perl-local-lib-path.vim'
Plug 'skaji/syntax-check-perl'
Plug 'mustache/vim-mustache-handlebars'
Plug 'motemen/xslate-vim'
Plug 'aming/vim-mason'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'lewis6991/gitsigns.nvim'
Plug 'rhysd/git-messenger.vim'
Plug 'NeogitOrg/neogit'
Plug 'sindrets/diffview.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'

" Other nvim
Plug 'romgrk/barbar.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kylechui/nvim-surround'

" All others
Plug 'vim-scripts/Align'
Plug 'hotwatermorning/auto-git-diff'
Plug 'jiangmiao/auto-pairs'
Plug 'EinfachToll/DidYouMean'
Plug 'junegunn/vim-easy-align'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdcommenter'
Plug 'xolox/vim-misc'
Plug 'vim-perl/vim-perl', { 'for': 'perl', 'do': 'make clean carp dancer highlight-all-pragmas moose test-more try-tiny' }
Plug 'xolox/vim-session'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'vim-scripts/SQLUtilities'
Plug 'ddrscott/vim-side-search'
Plug 'majutsushi/tagbar'
Plug 'wellle/targets.vim'
Plug 'csexton/trailertrash.vim'
Plug 'mbbill/undotree'
Plug 'machakann/vim-highlightedyank'
Plug 'frioux/vim-lost'

" Maybe?
Plug 'Scuilion/markdown-drawer'
Plug 'mzlogin/vim-markdown-toc'
Plug 'kristijanhusak/vim-carbon-now-sh'
Plug 'will133/vim-dirdiff'

call plug#end()
" }}}

" Appearance {{{
"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
    if (has("nvim"))
        "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif

    "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
    "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
    " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
    if (has("termguicolors"))
        set termguicolors
    endif
endif
set t_8b=[48;2;%lu;%lu;%lum
set t_8f=[38;2;%lu;%lu;%lum
let g:nord_italic = v:false
let g:nord_underline = 1
let g:nord_italic_comments = 1
set background=dark
colorscheme tokyonight-moon
syntax enable
set cursorline
hi UnwantedTrailerTrash guibg=red ctermbg=red
" }}}

" Basic vim options (ported from .vimrc) {{{
set clipboard+=unnamedplus     " put yanks/etc on the clipboard
set hidden                     " Allow unsaved buffers to be put in the background
set more                       " page on extended output
set novb                       " disable visual bell
set nowrap                     " don't wrap long lines
set pastetoggle=<F1>           " F1 to toggle paste
set ruler                      " display cursor position
set scrolloff=3                " always have three lines of context
set showcmd                    " show command-in-progress
set showmode                   " show the current input mode
set showmatch                  " Automagically show matching brackets
set timeout                    " allow keys to timeout
set title                      " do set the xterm title (see 'titleold', set below)
set undolevels=1000            " LOTS of undo history
set wildignore+=*/CVS/         " don't try to descend into CVS directories
set wildignore+=*/SVN/         " don't try to descend into SVN directories
set wildignore+=*/tmp/*,*.so,*.swp,*.zip    " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe " Windows
set wildignore+=*.o,*.obj,.vimtags          " ignore all sorts of other stuff too

set wildmenu                   " enable menu of completions
set wildmode=longest:full,full
                               " complete only as much as is common,
                               " then show menu
set writeany                   " avoid constant ! to overwrite. . .

" Disable netrw
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1

" Use a comma as our command leader
let mapleader = ","
let g:mapleader = ","
" }}}

" OS-specific stuff {{{
if !exists("g:os")
    if has("win64") || has("win32") || has("win16")
        let g:os = "Windows"
    else
        let g:os = substitute(system('uname'), '\n', '', '')
    endif
endif
" }}}

" Search settings {{{
set hlsearch                   " highlight matches
set ignorecase                 " ignore case in searching
set incsearch                  " incremental searching
set smartcase                  " makes searches case sensitive if they contain at least one capital

" Un-highlight search matches
nnoremap <leader><leader> :noh<CR>

" Use normal regex
nnoremap / /\v
vnoremap / /\v

" Tab matches brackets
nnoremap <tab> %
vnoremap <tab> %

" Ack
nnoremap <leader>a :Ack
nnoremap <leader>sa :SideSearch
" }}}

" Laziness {{{
iabbr --e cpan@jason.cromedome.dev
iabbr --n Jason A. Crome
iabbr --p jason@cromedome.dev
iabbr --r -- Jason, <C-R>=strftime("%Y-%m-%d")<CR>
iabbr --w jason@crome-plated.com
" }}}

" Editing settings {{{
set formatoptions=tcqj         " https://neovim.io/doc/user/change.html#fo-table

" Track cursor
nnoremap # :set cursorcolumn! cursorline!<CR>

" Cursor follows mouse
set mouse=a

" Toggle line numbering
set relativenumber             " Hybrid numbering - relative line numbers,
set number                     " actual number for the line you're on

" Add a ; to the end of the line;
" To recreate: inoremap [press ^V, then shift+enter] <esc>A;<cr>;
" DISABLED: this breaks <CR> in insert mode.
"inoremap  <esc>A;<cr>

" 4 space indent, as God intended
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Setup folding
set foldmethod=syntax
set foldcolumn=0
nnoremap <leader>z zMzvzz

" Enter to toggle folds, unless in Quickfix
nnoremap <silent> <CR> za
vnoremap <silent> <CR> za

autocmd CmdwinEnter * nnoremap <buffer> <cr> <cr>
autocmd FileType qf nnoremap <buffer> <cr> <cr>

" Directories for swap and tmp files. Don't use cwd!
set backupdir=~/.config/nvim/backup/
set backupdir-=.
set directory=~/.config/nvim/backup/
set directory-=.

" swap two words (from
" http://www.reddit.com/r/vim/comments/2772n9/nonprogrammers_your_best_tips_tricks/)
nnoremap <leader>sw dawwP

" Swap letters
nnoremap <leader>sl xph

" Join lines
vmap <leader>jl gJ

" indent a paragraph
nnoremap <leader>q gqip

" Re-wrap/reformat text
nnoremap <leader>rd gggqG
nnoremap <leader>rp gqap

" Resize splits when the window is resized
au VimResized * exe "normal! \<c-w>="
" }}}

" Other commands {{{
" Make Y consistent with C and D - yank to end of line, not full line.
nnoremap Y y$

" Highlight word
nmap <leader>w viw

" Inserts the path of the currently edited file into a command
" Command mode: Ctrl+P
cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

" Opens an edit command with the path of the currently edited file filled in
map <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Select (linewise) the text you just pasted (handy for modifying indentation):
nnoremap <leader>v V`]

" Save a file as root.
cabbrev w!! w !sudo tee % > /dev/null<CR>:e!<CR><CR>

" Tab/shift-tab to indent/outdent in visual mode.
vmap <Tab> >gv
vmap <S-Tab> <gv

" toggle spell checking with ,sp
nmap <silent> <leader>sp :set spell!<CR>

" By default, create splits in a more natural spot.
set splitbelow
set splitright

" Create a split on the given side.
" From http://technotales.wordpress.com/2010/04/29/vim-splits-a-guide-to-doing-exactly-what-you-want/ via joakimk.
nmap <leader><left>   :leftabove  vsp<CR>
nmap <leader><right>  :rightbelow vsp<CR>
nmap <leader><up>     :leftabove  sp<CR>
map <leader><down>   :rightbelow sp<CR>

" Delete a buffer, but leave the split open
"map <leader>d :bp\|bd \#
command Bd bp\|bd \#

" Use the current word under the cursor in a substitution.
nnoremap <Leader>S :%s/\<<C-r><C-w>\>//g<Left><Left>

" Directory listing
noremap <leader>ls  :!ls $(dirname %)<cr>
noremap <leader>la  :!ls -al $(dirname %)<cr>

" OS X: copy current file into paste buffer
map <leader>pb :!pbcopy < "%"<cr>

" Leader shortcuts for system clipboard
vmap <leader>y "+y
vmap <leader>d "+d
nmap <leader>y "+y
nmap <leader>d "+d
nmap <leader>p "+p
nmap <leader>P "+P
vmap <leader>p "+p
vmap <leader>P "+P

" Tab navigation
map <leader>t :tabnext<CR>
map <leader>T :tabprevious<CR>

nnoremap <leader>ot :call OT(input("ot: ", "", "file"))<cr>

function! OT(fname)
    let res = system("ot --editor vim --print " . shellescape(a:fname))
    if v:shell_error
        echo "\n" . res
    else
        execute "e " res
    endif
    call histadd(':', printf('call OT("%s")', escape(a:fname, '"\')))
endfunction
" }}}

" Startup {{{
if has("autocmd")
    " In Makefiles and Python, use real tabs, not tabs expanded to spaces
    au FileType make   set noexpandtab
    au FileType python set noexpandtab

    " Make PSGI files show as Perl
    au BufNewFile,BufRead *.psgi set filetype=perl

    " Make TT files show as HTML
    autocmd! BufNewFile,BufRead *.tt         setf tt2html
    autocmd! BufNewFile,BufRead wrapper      setf tt2html
    autocmd! BufRead,BufNewFile *.pl,*.pm    setfiletype perl
    autocmd! BufRead,BufNewFile *.yml,*.yaml setfiletype yaml

    " Treat JSON files like JavaScript
    au BufNewFile,BufRead *.json set ft=javascript

    " .md is Markdown, not Modula-2
    autocmd BufNewFile,BufReadPost *.md set filetype=markdown
    autocmd Filetype markdown setlocal spell textwidth=72

    " Special settings for git commit messages
    autocmd Filetype gitcommit setlocal spell textwidth=72
    autocmd Filetype gitcommit setlocal nofoldenable

    " SQL
    let g:sql_type_default = 'sqlany'
endif
" }}}

" FileType specific settings {{{
augroup ft_vim
    au!

    au FileType vim setlocal foldmethod=marker
    "au FileType help setlocal textwidth=78
augroup END
" }}}

" Plugin configuration {{{

" aLE settings {{{
let g:ale_linters = { 'perl': ['syntax-check'] }
" }}}

" Align settings {{{
vmap a= :Align =<CR>
vmap a> :Align =><CR>
vmap a: :Align :<CR>
" }}}

" CarbonNow {{{
map <leader>pp :CarbonNowSh<CR>
" }}}

" deoplete {{{
 let g:deoplete#enable_at_startup = 1

 if g:os == "NetBSD"
     let g:python3_host_prog = "/usr/pkg/bin/python3"
 elseif g:os == "OpenBSD"
     let g:python3_host_prog = "/usr/local/bin/python3"
 elseif g:os == "FreeBSD"
     let g:python3_host_prog = "/usr/local/bin/python3"
 elseif g:os == "Darwin"
     let g:python3_host_prog = "/opt/local/bin/python3"
 else
     let g:python3_host_prog = "/usr/bin/python3"
 endif
" }}}

" diffview {{{
call v:lua.require('diffview').setup()
" }}}

" EasyAlign {{{
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)<Paste>
" }}}

" gitsigns {{{
lua << EOGS
    require('gitsigns').setup {
      on_attach = function(bufnr)
        local gitsigns = require('gitsigns')

        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end

        -- Navigation
        map('n', ']c', function()
          if vim.wo.diff then
            vim.cmd.normal({']c', bang = true})
          else
            gitsigns.nav_hunk('next')
          end
        end)

        map('n', '[c', function()
          if vim.wo.diff then
            vim.cmd.normal({'[c', bang = true})
          else
            gitsigns.nav_hunk('prev')
          end
        end)

        -- Actions
        map('n', '<leader>hs', gitsigns.stage_hunk)
        map('n', '<leader>hr', gitsigns.reset_hunk)
        map('v', '<leader>hs', function() gitsigns.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
        map('v', '<leader>hr', function() gitsigns.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
        map('n', '<leader>hS', gitsigns.stage_buffer)
        map('n', '<leader>hu', gitsigns.undo_stage_hunk)
        map('n', '<leader>hR', gitsigns.reset_buffer)
        map('n', '<leader>hp', gitsigns.preview_hunk)
        map('n', '<leader>hb', function() gitsigns.blame_line{full=true} end)
        map('n', '<leader>tb', gitsigns.toggle_current_line_blame)
        map('n', '<leader>hd', gitsigns.diffthis)
        map('n', '<leader>hD', function() gitsigns.diffthis('~') end)
        map('n', '<leader>td', gitsigns.toggle_deleted)

        -- Text object
        map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
      end,
      current_line_blame = true,
      sign_priority = 15-- higher than diagnostic, todo signs; lower than dapui breakpoint sign.
    }
EOGS
" }}}

" indent-blankline {{{
call v:lua.require('ibl').setup()
" }}}

" lualine settings {{{
call v:lua.require('lualine').setup()
" }}}

" Terminal settings {{{
map <leader>tv :vsplit term://zsh<CR>
map <leader>th :split term://zsh<CR>:resize -10<CR>
map <F10> :split term://zsh<CR>:resize -10<CR>
" }}}

" Markdown Drawer {{{
nnoremap <Leader>md :MarkDrawer<cr>
map <F5> :MarkDrawer<cr>
" }}}

" Markdown TOC {{{
nnoremap <Leader>ght :GenTocGFM<cr>
nnoremap <Leader>uc :UpdateToc<cr>
nnoremap <Leader>rc :RemoveToc<cr>
" }}}

" Mustache {{{
"let g:mustache_abbreviations = 1
"}}}

" NERDCommenter {{{
map <leader>c <Plug>NERDCommenterToggle
map \\ <Plug>NERDCommenterToggle
" }}}

" Neoformat {{{
nmap = :Neoformat<CR>
vmap = :Neoformat<CR>
" }}}

" neogit and diffview {{{
lua << EONG
    require('neogit').setup {
        disable_commit_confirmation = true,
        integrations = {
            diffview = true
        }
    }
EONG

map <F8> :DiffviewOpen<CR>
nnoremap <leader>gg :Neogit<cr>
nnoremap <leader>gd :DiffviewOpen<cr>
nnoremap <leader>gD :DiffviewOpen master<cr>
nnoremap <leader>gl :Neogit log<cr>
nnoremap <leader>gp :Neogit push<cr>
" }}}

" nvim-surround {{{
call v:lua.require('nvim-surround').setup()
" }}}

" nvim-tree {{{
call v:lua.require('nvim-tree').setup()
nnoremap <F2> :NvimTreeToggle<CR>
map <leader>nt :NvimTreeToggle<CR>
map <leader>TR :NvimTreeRefresh<CR>
lua << EONT
    local nvim_tree_events = require('nvim-tree.events')
    local bufferline_api = require('bufferline.api')

    local function get_tree_size()
      return require'nvim-tree.view'.View.width
    end

    nvim_tree_events.subscribe('TreeOpen', function()
      bufferline_api.set_offset(get_tree_size())
    end)

    nvim_tree_events.subscribe('Resize', function()
      bufferline_api.set_offset(get_tree_size())
    end)

    nvim_tree_events.subscribe('TreeClose', function()
      bufferline_api.set_offset(0)
    end)
EONT
" }}}

" Perl Settings {{{
"let g:perl_local_lib_path = "lib"
"autocmd FileType perl PerlLocalLibPath

" Perl code folding options
let perl_fold=1
let perl_include_pod=1
let perl_sub_signatures = 1
let perl_extended_vars = 1

" perltidy settings
nnoremap <silent> <leader>pt :%!perltidy -q<Enter>
vnoremap <silent> <leader>pt :!perltidy -q<Enter>
" }}}

" SQL Formatter {{{
let g:sqlutil_keyword_case = '\U' " change SQL keywords to upper case
let g:sqlutil_align_where = 1
let g:sqlutil_align_comma = 1
vmap <silent>sf <Plug>SQLU_Formatter<CR>
" }}}

" Split/Join {{{
nmap <Leader>j :SplitjoinJoin<cr>
nmap <Leader>s :SplitjoinSplit<cr>
" }}}

" Tagbar {{{
nnoremap <silent> <Leader>tb :TagbarToggle<CR>
map <F3> :TagbarToggle<CR>
let g:tagbar_type_perl = {
    \ 'ctagstype' : 'perl',
    \ 'kinds'     : [
        \ 'p:package:0:0',
        \ 'w:roles:0:0',
        \ 'e:extends:0:0',
        \ 'u:uses:0:0',
        \ 'r:requires:0:0',
        \ 'o:ours:0:0',
        \ 'a:properties:0:0',
        \ 'b:aliases:0:0',
        \ 'h:helpers:0:0',
        \ 's:subroutines:0:0',
        \ 'd:POD:1:0'
    \ ]
\ }
" }}}

" Telescope {{{
nnoremap <leader><space> <cmd>Telescope buffers<cr>
nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <leader>g <cmd>Telescope live_grep<cr>
nnoremap <C-f> <cmd>Telescope find_files<cr>
nnoremap <C-g> <cmd>Telescope git_files<cr>
" }}}

" TrailerTrash {{{
nnoremap <Leader>tr :TrailerTrim<cr>
nnoremap <Leader>tg :TrailerToggle<cr>
" }}}

" Trouble/TODO {{{
lua << EOF
  require("trouble").setup {};
  require("todo-comments").setup {
      keywords = {
        FIX = {
          icon = " ", -- icon used for the sign, and in search results
          color = "error", -- can be a hex color, or a named color (see below)
          alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
          -- signs = false, -- configure signs for some keywords individually
        },
        TODO = { icon = " ", color = "info" },
        XXX  = { icon = " ", color = "info" },
        HACK = { icon = " ", color = "warning" },
        WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
        PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
        NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
        TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
      },
  };
EOF

map <leader>xx :TroubleToggle<CR>:resize +10<CR>
map <leader>x :TodoTrouble<CR>:resize +10<CR>
map <leader>xt :TodoTelescope<CR>
nnoremap <F6> :TroubleToggle<CR>:resize +10<CR>
nnoremap <F7> :TodoTrouble<CR>:resize +10<CR>
" }}}

" Typescript {{{
"autocmd QuickFixCmdPost [^l]* nested cwindow
"autocmd QuickFixCmdPost    l* nested lwindow
" }}}

" undotree {{{
nnoremap <F4> :UndotreeToggle<CR>
map <leader>ub :UndotreeToggle<CR>
let g:undotree_WindowLayout = 4
" }}}

" vim-session {{{
let g:session_autosave="no"
let g:session_autoload='no'
" }}}
"}}}
