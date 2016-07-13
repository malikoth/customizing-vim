name: title
layout: true
class: center, middle, huge
background-image: url('blue-wallpaper.jpg')

.left-column[

]
.right-column[

]

---

name: background
layout: true
background-image: url('blue-wallpaper.jpg')

---

template: title
# Customizing Vim
## An Introduction To Your .vimrc
### Kyle Rich

.footnote[
Follow along at https://git.io/customizing-vim
]

---

.left-column[
# Overview
]
.right-column[
* Motivation
* Vim concepts
* Defaults
* Keyboard shortcuts
* Plugins
]

---

.left-column[
# Overview
### - What this is not
]
.right-column[
This talk is not ...

* A history of Vim.  It's old, but still going strong.  Enough said.
* An Emacs roast.  I actually don't know enough about Emacs to even attempt it.
* For experienced users.  Seriously, you probably know more than me.

]

---

.left-column[
# Overview
### - What this is not
### - What this is
]
.right-column[
This talk is ...

* An introduction to what's in your master configuration file
* Show and tell
* Partially based on opinion
  * I don't think anything involving Vim isn't...
]

---

.left-column[
# Overview
### - What this is not
### - What this is
### - My goal
]
.right-column.padding[
My goal for this talk is for you to feel equipped to look at someone else's .vimrc file, and learn something from it.
]

---

.left-column[
# Motivation
### - What I love
]
.right-column[
* Almost universally available
* Portable configuration
* Syntax highlighting for almost everything
* Customizable / Extensible
* Repeat command / macros
]
--

.right-column[
# But mostly...
## My hands stay on home row!
]

---

.left-column[
# Motivation
### - What I love
### - Keyboard shortcuts
]
.right-column[
You will find yourself using h, j, k, and l for navigation in the craziest places.

* GMail
* Feedly
* `more` / `less`
* `man`
* This very presentation
]

---

.left-column[
# Vim Concepts
### - Editor modes
]
.right-column[
Two basic modes

* Normal (which never seems normal to new users)
* Insert

Press 'i' to go from Normal to Insert

Press 'esc' to go from Insert to Normal
]

---

.left-column[
# Vim Concepts
### - Editor modes
### - Advanced editor modes
]
.right-column[
At least three more modes:

* Visual mode for selecting text
  * Press `v` to enter normal visual mode
  * Press `<Shift-v>` to enter visual line mode
  * Press `<Ctrl-v>` to enter visual column mode
* Command mode for entering commands to Vim
  * Press `:` to enter
* Replace mode for writing over existing words
  * Press `<Shift-R>` to enter
]

---

.left-column[
# Vim Concepts
### - Editor modes
### - Advanced editor modes
### - Commands
]
.right-column[
* `:w` for write
* `:q` to quit
* `:e` for edit
* `:h` for help

Just remember to be in normal mode first!
]

---

.left-column[
# Vim Concepts
### - Editor modes
### - Advanced editor modes
### - Commands
### - vimrc
]
.right-column[
* Default location is the root of your user folder, i.e., `~/.vimrc`
* Since Vim 7.4, will also look for `~/.vim/vimrc`
* See [Tom Vincent's](https://tlvince.com/vim-respect-xdg) blog for help making Vim conform to the XDG spec

My vimrc contains:
* Some configuration stuff
* Tons of settings
* Tons of custom keyboard shortcuts
* Some functions
]

---

.left-column[
# Defaults
### - General
]
.right-column[
```vim
" Turn off vi compatibility, use advanced vim-only features
set nocompatible

" Turn on syntax highlighting
syntax enable

" Set colors to use 256 color palette
set t_Co=256

" Use the system clipboard as the default copy register
set clipboard=unnamed

" Copy indentation level when creating a new line
set autoindent

" Try to put the indent level at the right place
set smartindent

" Keep vim files in the ~/.vim folder
set viminfo='100,h,n~/.vim/viminfo
```
]

---

.left-column[
# Defaults
### - General
### - Searching
]
.right-column[
```vim
" Case insensitive search
set ignorecase

" Unless there is mixed case, then make it case sensitive
set smartcase

" Highlight search terms instead of just moving the cursor
set hlsearch

" Highlight search terms as you type them
set incsearch
```
]

---

.left-column[
# Keyboard Shortcuts
### - Map
]
.right-column[
* `map` is used to map shortcuts to actions
* Usage is `map [sequence of keys] [sequence of keys]`
* When you press the sequence of keys on the left, Vim types the sequence on the right
* You can use key modifiers like Alt, by putting it in angle brackets `<Alt-h>`
* `nnoremap <A-h> :bp<cr>` maps Alt+h to type ":bp" followed by the enter key (carriage return)
]

---

.left-column[
# Keyboard Shortcuts
### - Map
### - Non-recursive mode
]
.right-column[
* Vim already has a ton of keyboard shortcuts, and plugins all introduce their own
* We need a way to keep from stepping on the toes of other shortcuts
* Non-recursive maps solve this problem
* Prepend `nore` to a keyboard mapping to make it non-recursive

e.g.,

`noremap <leader>' <esc>:qa!<cr>`
]

---

.left-column[
# Keyboard Shortcuts
### - Map
### - Non-recursive mode
### - Mode filtering
]
.right-column[
* Maps can optionally apply only to specific modes
* Prepend the character code for the mode to the map


* i - Input mode
* n - Normal mode
* c - Command mode
* v - Visual mode
]

---

.left-column[
# Keyboard Shortcuts
### - Map
### - Non-recursive mode
### - Mode filtering
### - Leader
]
.right-column[
* The "leader" key is just an alias to some other key, but you can change the alias
* `<leader>` shows up all the time, particularly in shortcuts specific to plugins

Set the leader:

`let mapleader=","`

Use leader in a shortcut:

`noremap <leader>sn :set number!<cr>`
]

---

.left-column[
# Keyboard Shortcuts
### - Map
### - Non-recursive mode
### - Mode filtering
### - Leader
### - Common shortcuts
]
.right-column[
```vim
" Set the leader to comma, it'll grow on you
let mapleader=","

" Set the sequence 'jk' to hit escape
" This will make leaving input mode easier
inoremap jk <esc>

" This will save you when you discover you
" don't have permission to save a file
cnoremap w!! w !sudo tee % >/dev/null

" These make moving around easier with wrapped lines
nnoremap j gj
nnoremap k gk

" These allow you enter command mode without the shift key
nnoremap ; :
vnoremap ; :
```
]

---

.left-column[
# Plugins
]
.right-column[

]

---

template: title
# Questions?

---

.left-column[
## Resources
]
.right-column[
* This talk https://git.io/customizing-vim
* RemarkJS Markdown based presentation framework http://remarkjs.com

## Please leave feedback!
https://joind.in/talk/09b88
]
