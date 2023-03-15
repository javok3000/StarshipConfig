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
alias gca='git commit --all --amend' #Correct a commit
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
alias kg='kubectl get' #<pod;deployment;service;replicaset;nodes...> #Use -n to get resources of other namespaces
alias kga='kubectl get all' #Get everything in the cluster.
alias kc='kubectl create' #<deployment;service...>
alias krm='kubectl delete' #<deployment;service...>
alias kl='kubectl logs' #<ID pod;deployment...>
alias kd='kubectl describe' #Describes <pod;service;deployment;replica;node>, add name. #kdp <name>
alias ke='kubectl edit' #<deployment;service...>
alias ka='kubectl apply -f' #<File_name.yaml> #Use --namespace=<namespace_name>
alias krmf='krm -f' #<File_name.yaml>
alias kdalld='kd --all deployments' #Delete all deployments BE CARFULL!!!
alias kci='kubectl cluster-info'
alias kcn='kubectl create namespace' #Create cluster namespace. Add name #kcn <namespace_name>
alias klnf='kubectl api-resources --namespaced=false' #List every resource that isn't namespaceble
alias klnt='kubectl api-resources --namespaced=true' #List every resource that is namespaceble

source <(kubectl completion zsh)


#Ruby
source "/etc/profile.d/rvm.sh"

#AWS Completer
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
complete -C '/usr/local/bin/aws_completer' aws

#Terraform
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform
