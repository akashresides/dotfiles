if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx LANG en_AU.UTF-8
    abbr -a up "sudo pacman -Syu"
    abbr -a rem "sudo pacman -Rs"
    bind \cb fish_clipboard_copy
    bind \et 'fish_commandline_prepend nvim'
    fzf_configure_bindings --directory=\cf --history=\ct --processes=\cp
end
