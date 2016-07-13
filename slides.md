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
* Setting keyboard shortcuts
* Plugin management
* Some common generic plugins
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
### - Commands
### - vimrc
### - 
]
.right-column[
* `:w` to save
* `:q` to quit
* `:e` to edit a file

Just remember to be in normal mode first!
]

---

.left-column[
# Vim Concepts
### - Editor modes
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
# Sane defaults
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
