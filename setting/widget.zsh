# Add widgets dir to fpath
fpath+=($zvimdir/widgets)

# Load all widgets
for w in $zvimdir/widgets/*
do
	autoload -U $w:t
	zle -N $w:t
done

# Prepare required widgets
autoload -U read-from-minibuffer

# Prepare global variables
typeset -A zvim_dirmarks
zvim_savedir=${zvim_savedir:-~/.zvim/save}
mkdir -p $zvim_savedir
zvim_dirmarks_save_file=$zvim_savedir/dirmarks

# Load global variables
zvim-dirmark-load
