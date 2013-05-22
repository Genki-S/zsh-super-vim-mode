# Variables
zvimdir=${zvimdir:-$HOME/.zvim}

if [ -z $zvim_skip_binding ]; then
	source $zvimdir/setting/bindkey.zsh
fi

if [ -z $zvim_skip_widget ]; then
	source $zvimdir/setting/widget.zsh
fi

if [ -z $zvim_skip_prompt ]; then
	source $zvimdir/setting/prompt.zsh
fi
