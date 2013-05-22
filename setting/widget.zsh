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
mkdir -p $zvimdir/save
zvim_dirmarks_save_file=$zvimdir/save/dirmarks

# Load global variables
zvim-dirmark-load
