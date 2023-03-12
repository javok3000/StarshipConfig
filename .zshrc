#Initial sh

#Starship
eval "$(starship init zsh)"

#Alias

#ZSH
alias SH='nano ~/.zshrc'
alias RS="exec $SHELL"
alias ..="cd .."
alias ~='cd ~'

#Git
alias gi='git init'
alias gs='git status'
alias push='git push'
alias pushf='git push --force'
alias pull='git pull'
alias pullf='git pull --force'
alias gc='git commit'
alias gri='git rebase -i'
alias ga='git add .'
alias gch='git checkout'
alias gcln='git clone'
alias grro='git remote rename origin'
alias gra='git remote add'
alias grau='git remote add upstream'
alias arbol="git log --all --graph --decorate --oneline"

#Python
alias venv="python3 -m venv venv"
alias activate="source venv/bin/activate"
alias pip3="python3 -m pip"

#Docker
alias dps='docker ps'
alias di='docker image ls'
alias dr='docker run -d'
alias drt='docker restart'
alias dst='docker start'
alias dsp='docker stop'
alias dex='docker exec'
alias drm='docker rm'
alias drmi='docker image rm'
alias drma='drm $(dps -a)'
alias drmia='drmi $(di)'


#AWS Completer
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
complete -C '/usr/local/bin/aws_completer' aws

#Terraform
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
