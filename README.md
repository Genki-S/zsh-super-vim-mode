# zsh-super-vim-mode
I love vim. I love zsh.

Now, let's make zsh a little more vim-like.

## Installation

1. Clone this repository into ~/.zvim (or wherever you like)
2. Put these lines into your zshrc

		zvimdir=~/.zvim
		source $zvimdir/zsh-super-vim-mode.zsh

## Features

### Directory Marks
You can set "marks" to directories.
This makes it easy to jump around your favorite directories.

By default, you can use this feature as follows:

* `m{a-zA-Z}` (in cmd mode): Set mark {a-zA-Z} at current directory
* `` `{a-zA-Z}`` (in cmd mode): Jump (= cd) to the mark {a-zA-Z}
