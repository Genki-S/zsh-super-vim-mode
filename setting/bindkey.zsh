# Use vi binding
bindkey -v

# vicmd bindings
bindkey -M vicmd 'Y' vi-yank-eol
bindkey -M vicmd 'u' undo
bindkey -M vicmd '^r' redo

# viins bindings

# vicmd, viins common settings

## Helper function
function vi_common_bindkey() {
	bindkey -M viins $*
	bindkey -M vicmd $*
}

## <C-p>, <C-n>
zle -l | grep history-substring-search &> /dev/null
if [ $? -eq 0 ]; then
	# Use zsh-history-substring-search if it is installed
	vi_common_bindkey '^p' history-substring-search-up
	vi_common_bindkey '^n' history-substring-search-down
else
	vi_common_bindkey '^p' history-beginning-search-backward
	vi_common_bindkey '^n' history-beginning-search-forward
fi

# Directory Mark bindings
bindkey -M vicmd 'm' zvim-dirmark-add
bindkey -M vicmd '`' zvim-dirmark-jump
