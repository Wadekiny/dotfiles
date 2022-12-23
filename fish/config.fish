
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#eval /home/wadekiny/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

# WSL2
set -x hostip (cat /etc/resolv.conf |grep -oP '(?<=nameserver\ ).*')
set -x http_proxy "http://$hostip:7890"
set -x https_proxy "http://$hostip:7890"
#set -x http_proxy "http://172.29.112.1:7890"
#set -x https_proxy "http://172.29.112.1:7890"
# WSL2

abbr aconda 'eval /home/wadekiny/anaconda3/bin/conda "shell.fish" "hook" $argv | source'
abbr ra ranger
abbr lg lazygit
abbr nv nvim
abbr todo nvim /home/wadekiny/Blog/source/_posts/TODO.md
