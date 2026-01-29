# User specific settings

# Initial scripts

# If not running an interactive shell, don't proceed with the following settigs.
case $- in
    *i*) ;;
      *) return;;
esac

# Don't put duplicate lines, or lines starting with a space in the history tracking.
HISTCONTROL=ignoreboth

# Append to the history file, don't overwrite it
shopt -s histappend

# History length max settings
HISTSIZE=500
HISTFILESIZE=2000

# Check terminal window size after each command
# If necessary update LINES and COLUMNS
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# Aliases
# Show everything (permissions, owner, group, etc.) - directories first, human-readable sizes
alias la='ls -alhF --group-directories-first'

# Long format without owner/group - directories first, human-readable sizes
alias ls='ls -AlhF --group-directories-first'

# Directory Shortcuts
export ARCHIVE="/run/media/blackburn/working_files/Archives"
export ARCDOCS="/run/media/blackburn/working_files/Archives/Docs"
export ARCNOTE="/run/media/blackburn/working_files/Archives/Notes"
export PROJECTS="/run/media/blackburn/working_files/Projects/Repos/karlchvojka"
