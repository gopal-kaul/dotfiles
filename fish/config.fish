if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx LANG "en_US.utf-8"
    set -gx PATH $PATH $HOME/.cargo/bin
    set -gx PATH $PATH $HOME/.local/share/bob/nvim-bin
end
