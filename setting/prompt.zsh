# Reset prompt when
#  (1) new line is started
#  (2) keymap is changed
function zle-line-init zle-keymap-select {
	zle reset-prompt
}
zle -N zle-keymap-select

# For customizing prompt
function zvim_is_command_mode {
	return `[ "$KEYMAP" = "vicmd" ]`
}

# For easier use for prompt
function zvim_current_mode {
	echo ${${KEYMAP/main/viins}/vi/}
}
