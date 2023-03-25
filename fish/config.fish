
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#eval /home/wadekiny/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
set fish_greeting
set -x PATH /home/wadekiny/.local/bin $PATH
abbr aconda 'eval /home/wadekiny/anaconda3/bin/conda "shell.fish" "hook" $argv | source'

if not test $HYPRLAND_CMD
    echo "start Hyprland..."
    starthyprland
end



abbr ra ranger
abbr lg lazygit
abbr nv nvim
abbr vim nvim
abbr blog cd ~/Blog
abbr post cd ~/Blog/source/_posts
abbr todo nvim ~/Blog/source/_posts/TODO.md
abbr code cd ~/Code
abbr dot cd ~/Dotfiles
abbr test cd ~/test

export PATH="/home/wadekiny/.local/bin:/home/wadekiny/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/usr/bin/toolchain_gcc_t-head_linux/bin"
