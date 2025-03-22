if status is-interactive
    # Commands to run in interactive sessions can go here

    set -U EDITOR nvim
    set -U VISUAL nvid
    set -U TERM kitty

    # alias emacs='emacsclient -n -r'
    # alias ls='ls --color=auto'
    alias ls='eza --icons'
    alias lst='eza --icons --tree'
    alias grep='grep --color=auto'
    alias nvid='neovide --fork'
    alias jcomp='javac -d bin src/**/*.java'
    alias jrun='java -cp bin'
    alias ssh='kitten ssh'
    alias jtestsetup='mkdir target; mkdir lib; cp $HOME/.config/nvim/neotest-java/junit-platform-console-standalone-1.11.4.jar ./lib'
    alias jtestc='javac -d target -cp target:lib/junit-platform-console-standalone-1.11.4.jar src/**/*.java'
    alias jtestrun='java -jar lib/junit-platform-console-standalone-1.11.4.jar execute --class-path target --select-class '
    alias ffind='nvim (fzf --preview="bat --color=always {}")'
    alias cfind='cd (dirname (fzf --preview="bat --color=always {}"))'
    alias fzf='fzf --preview="bat --color=always {}"'

    # alias eww='~/githubs/eww/target/release/eww'
end
#tide
set --global tide_cmd_duration_color brwhite

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
