#        _                _            _       _    _            _      
#      /\ \              / /\         / /\    / /\ /\ \        /\ \     
#     /  \ \            / /  \       / / /   / / //  \ \      /  \ \    
#  __/ /\ \ \          / / /\ \__   / /_/   / / // /\ \ \    / /\ \ \   
# /___/ /\ \ \        / / /\ \___\ / /\ \__/ / // / /\ \_\  / / /\ \ \  
# \___\/ / / /        \ \ \ \/___// /\ \___\/ // / /_/ / / / / /  \ \_\ 
#       / / /          \ \ \     / / /\/___/ // / /__\/ / / / /    \/_/ 
#      / / /    _  _    \ \ \   / / /   / / // / /_____/ / / /          
#      \ \ \__/\_\/_/\__/ / /  / / /   / / // / /\ \ \  / / /________   
#       \ \___\/ /\ \/___/ /  / / /   / / // / /  \ \ \/ / /_________\  
#        \/___/_/  \_____\/   \/_/    \/_/ \/_/    \_\/\/____________/  

# autoload -U colors && colors
stty stop undef #disable ^s
setopt autocd
setopt interactive_comments
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

alias b="brew"
alias v="vim"
alias sv="sudo vim"
alias g="git"
alias mkd="mkdir -pv"
alias ll="ls -al"
alias la="ls -a"
alias cd..="cd .."
alias vrc="vim ~/.vimrc"

