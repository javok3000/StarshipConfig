#Initial sh

#Starship Start
eval "$(starship init zsh)"

#Alias

#ZSH
alias SH='nano ~/.zshrc' #Open zsh config file anywhere.
alias RS="exec $SHELL" #Restart zsh.
alias ..="cd .." #Previous directory.
alias ~='cd ~' #Home.
alias win='cd /mnt/c/Users/admin/' #Windows folder.

#Git
alias gi='git init' #Initialize git in current directory.
alias gs='git status' #Show git status.
alias push='git push' #Push to remote repository. #push <name_remote_repo> <branch_name>
alias pushf='git push --force' #Force push.
alias pull='git pull' #Pull remote repository. #pull <name_remote_repo> <branch_name>
alias pullf='git pull --force' #Force Pull.
alias gc='git commit' #Generate a commit. #gc -m <comment>
alias gri='git rebase -i' #Change a previous commit.
alias ga='git add .' #Add untracked files.
alias gch='git checkout' #Change branch.
alias gcln='git clone' #Clone a remote repository.
alias grro='git remote rename origin' #change remote name.
alias gra='git remote add' #Add a remote repository.
alias grau='git remote add upstream' #Add a remote repository as upstream.
alias arbol="git log --all --graph --decorate --oneline" #Grafic log git

#Python
alias venv="python3 -m venv venv" #Create python's virtual enviroment
alias activate="source venv/bin/activate" #Activate virtual enviroment
alias pip3="python3 -m pip" #Short cut for pip module

#Docker
alias dps='docker ps' #Show runing containers, add -a to print EVERY container.
alias dpull='docker pull' #Image pull from DockerHub #dpull <image_name>:<tag>
alias di='docker image ls' #List every downloaded image.
alias dr='docker run -d' #Dry run a container, add the name of the image you want to use. #dr <image_name>:<tag>
alias drt='docker restart' #Restart container, add name or id of container. #drt <id or name>
alias dst='docker start' #Start a stoped container, add name or id of container. #dst <id or name>
alias dsp='docker stop' #Stop a running container, add name or id of container #dsp <id or name>
alias dex='docker exec' #Execute a command in a container. #dex -it <id or name> /bin/bash #container terminal
alias drm='docker rm' #Delete a container. #drm <id or name>
alias drmi='docker image rm' #Delete a image. #drmi <image_name>:<tag>
alias drma='drm $(dps -a)' #Delete every container.
alias drmia='drmi $(di)' #Delete every image.

#Kubernetes
alias kg='kubectl get' #<pod;deployment;service;replicaset;nodes...>
alias kc='kubectl create' #<deployment;service...>
alias kd='kubectl delete' #<deployment;service...>
alias kl='kubectl logs' #<ID pod;deployment...>
alias ke='kubectl edit' #<deployment;service...>
alias ka='kubectl apply -f' #<File_name.yaml>
alias kdalld='kd --all deployments' #Delete all deployments BE CARFULL!!!


#Ruby
source "/etc/profile.d/rvm.sh"

#AWS Completer
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
complete -C '/usr/local/bin/aws_completer' aws

#Terraform
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform

#AWS
export AWS_ACCESS_KEY_ID=AKIAX2FRWVHE5A56WL4B
export AWS_SECRET_ACCESS_KEY=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

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

#Var
export ilitia=".ssh/ilitia_amazon.pem"
