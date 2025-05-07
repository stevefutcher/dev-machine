SSH_ENV=$HOME/.ssh/environment

MY_NAME="steve.futcher" ###your login, no domain

# Git shortcuts
gmd () { git checkout $(gdef) ; git pull ; git checkout -; git merge $(gdef) ; }
gnd () { git checkout $(gdef) ; git pull ; git checkout -b $1 ; }
gcd () { git checkout $(gdef) ; git pull ; }
gcp () { git add . ; git commit -m "$1" ; git push -u origin HEAD ; }
alias gdef='git rev-parse --abbrev-ref origin/HEAD | cut -d"/" -f2' # Gets the default branch assuming HEAD is set. If this errors run 'gsh'
alias gpu='git push -u origin head'
alias gm='git checkout main;git pull; '
alias gst='git status '
alias gsh='git remote set-head origin -a '
alias gc='git checkout '
alias gcb='git checkout -b '
alias gco='git checkout '
alias gl='git log '
glol () {  git log --name-only --oneline "$1";  }  ## eg glol HEAD~2  
alias gl2='git log -2 '
alias gpl='git pull '
alias gpsh='git push '
alias gad='git add . ; gst;  '
alias gblocal='git branch --sort=-committerdate'
alias gbremote='git branch -r --sort=-committerdate | head'
alias glmine="git log --author=$MY_NAME"
alias gunstage='git restore --staged .; gst;'
#spacing around the () and {} is crucial in the function definition
gbv () { git branch -v | grep "$1" ;}
gtb () {  gcb ${branch}$(date +"%y%m%d%h%m%s") ; }                    # Create a timestamped branch & check it out

alias gmrg='git merge --squash '                                                                                          ## push a newly-created branch to the remote, tracking the remote branch in the process
glast () {  git show --stat --oneline HEAD; }                                              ##Show the filenames of the changed files in the last commit in the current branch
gcrmt () {  gc $(gbremote | head -1 | cut -d "/" -f 2) ; } ## checkout the latest branch pushed-to on the remote

## Misc
bkprc () { d=$(date +%Y%m%d%H%M%S) ; cp c:/Users/$MY_NAME/.bashrc c:/Users/$MY_NAME/.bashrc-$d ;  ls -A c:/Users/$MY_NAME/.bashrc-$d ; } ### backup your .bshrc
bshrc () { source  c:/Users/$MY_NAME/.bashrc ; } ### Once saved, run this to invoke the saved .bashrc
alias ebrc="npp  c:/Users/$MY_NAME/.bashrc & " ## Launch Notepad++ and open .bashrc to edit it. Ampersand launches in background to free up the shell