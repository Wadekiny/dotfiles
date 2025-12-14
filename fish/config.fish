starship init fish | source
if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias lg=lazygit
export PATH="$HOME/Workspace/scripts:$PATH"
export PATH="$HOME/Software/bin:$PATH"
export XDG_CONFIG_HOME="$HOME/.config"
fish_vi_key_bindings
