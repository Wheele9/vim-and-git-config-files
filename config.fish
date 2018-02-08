

set_color cyan
echo 'fish.config loaded'
set -Ux EDITOR nvim
set -Ux VISUAL EDITOR nvim
set PATH /home/matyi/miniconda3/bin $PATH
source (conda info --root)/etc/fish/conf.d/conda.fish



alias p "python"
alias ncmp "ncmpcpp -b ~/.config/ncmpcpp/bindings"
alias sx "/usr/share/doc/ranger/examples/rifle_sxiv.sh"
alias r "sudo R"
alias R "sudo R"
alias df "df -hT"
alias bp "bpython"
alias coin "python .coin.py"
alias vim "nvim"
alias sd 'ls -lh'
alias ip 'jupyter notebook'
alias rr 'ranger'
alias cc 'calcurse'
alias pdf 'xdg-open'
alias ts 's-tui'
alias vim 'nvim'
alias ll 'clear'
alias xx 'exit'
alias p 'python'
alias n 'nautilus .'
alias t 'tmux'
alias bp 'bpython'
alias OTP 'cd /media/matyi/Data/PYTHON/PYTHON3/bokehserver/; bokeh serve --show finance.py'
alias colors '~/.colors.sh'
alias wthr 'curl wttr.in/budapest'
alias enbeep 'sudo modprobe pcspkr'
alias coin 'p ~/.coin.py'
alias trainy 'p ~/.trainy.py'
alias beepy 'sudo modprobe pcspkr; p ~/.beepy.py'

alias zvim '/usr/bin/zsh; nvim'

alias cfb 'nvim ~/.bashrc'
alias cfa 'nvim ~/.bash_aliases'
alias cfr 'nvim ~/.config/ranger/rc.conf'
alias cfi 'nvim ~/.config/i3/config'
alias cff 'nvim ~/.config/fish/config.fish'
alias cft 'nvim ~/.tmux.conf'

function fish_greeting

    fish_logo
end
