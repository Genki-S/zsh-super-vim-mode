# Use vi binding
bindkey -v

# vicmd bindings
bindkey -M vicmd 'Y' vi-yank-eol
bindkey -M vicmd 'u' undo
bindkey -M vicmd '^r' redo

# Directory Mark bindings
bindkey -M vicmd 'm' zvim-dirmark-add
bindkey -M vicmd '`' zvim-dirmark-jump
