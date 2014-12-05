# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
#shopt -s histappend
#export PROMPT_COMMAND='history -a'

##Search and auto fill the command with the first letters
#bind '"\e[B": history-search-forward'
#bind '"\e[A": history-search-backward' 


######## User specific aliases and functions
#bind x '"C-l": ls -l'
alias s="source ~/.bashrc"
alias rr="rm -rf"
#alias ls='ls --show-control-chars'
alias ll="ls -al"
alias lr="ls -trl"
alias l.='ls -d .* --color=auto'
alias g='grep -n'
alias p='pwd'

## a quick way to get out of current directory ##
#alias -="cd -"
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'


##: Generate sha1 digest
alias sha1='openssl sha1'

##: Make mount command output pretty and human readable format
alias mount='mount |column -t'

# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'
 

# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
 
# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'


# reboot / halt / poweroff
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'


####: Get system memory, cpu usage, and gpu memory info quickly
## pass options to free ## 
alias meminfo='free -m -l -t'
 
## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
 
## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
 
## Get server cpu info ##
alias cpuinfo='lscpu'
 
## older system use /proc/cpuinfo ##
##alias cpuinfo='less /proc/cpuinfo' ##
 
## get GPU ram on desktop / laptop## 
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'
 
# Reboot my home Linksys WAG160N / WAG54 / WAG320 / WAG120N Router / Gateway from *nix.
alias rebootlinksys="curl -u 'admin:my-super-password' 'http://192.168.1.2/setup.cgi?todo=reboot'"
 
# Reboot tomato based Asus NT16 wireless bridge 
alias reboottomato="ssh admin@192.168.1.1 /sbin/reboot"


#shaokc 20141206## ########
#shaokc 20141206## ##Opencv Lib Config
#shaokc 20141206## export LD_LIBRARY_PATH=/usr/lib64
#shaokc 20141206## alias gcv="g++ -Wall `pkg-config opencv --libs --cflags opencv`"

# User specific aliases and functions
# shaokc personal PC.
# For some IC tools.
export CDS_HOME=/tooltop/cadence
export LM_LICENSE_FILE=$CDS_HOME/License/cadence_license.dat
export PATH=$CDS_HOME/INCISIV_13.20.002/tools.lnx86/bin:$PATH

#######
reverse-i-search
