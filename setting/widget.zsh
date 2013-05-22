# Add widgets dir to fpath
fpath+=($zvimdir/widgets)

# Load all widgets
for w in $zvimdir/widgets/*
do
	autoload -U $w:t
	zle -N $w:t
done
