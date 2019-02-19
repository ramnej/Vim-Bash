alias aws-get-p2='export instanceId=`aws ec2 describe-instances --filters "Name=instance-state-name,Values=stopped,Name=instance-type,Values=p2.xlarge" --query "Reservations[0].Instances[0].InstanceId"` && echo $instanceId'
alias aws-get-t2='export instanceId=`aws ec2 describe-instances --filters "Name=instance-state-name,Values=stopped,Name=instance-type,Values=t2.micro" --query "Reservations[0].Instances[0].InstanceId"` && echo $instanceId'
alias aws-start='aws ec2 start-instances --instance-ids $instanceId && aws ec2 wait instance-running --instance-ids $instanceId && export instanceIp=`aws ec2 describe-instances --filters "Name=instance-id,Values=$instanceId" --query "Reservations[0].Instances[0].PublicIpAddress"` && echo $instanceIp'
alias aws-ip='export instanceIp=`aws ec2 describe-instances --filters "Name=instance-id,Values=$instanceId" --query "Reservations[0].Instances[0].PublicIpAddress"` && echo $instanceIp'
alias aws-ssh='ssh -i ~/.ssh/aws-key.pem ubuntu@$instanceIp'
alias aws-stop='aws ec2 stop-instances --instance-ids $instanceId'
alias v='vim'
alias py='/Library/Frameworks/Python.framework/Versions/3.7/bin/python3.7'
alias t='tmux attach -t'
alias config='/usr/bin/git --git-dir=/Users/johanramne/.cfg/ --work-tree=/Users/johanramne'
alias ich='cd /Users/johanramne/Library/Mobile\ Documents/iCloud~com~altifondo~HealthFit/Documents'
alias ic='cd /Users/johanramne/Library/Mobile\ Documents/com~apple~CloudDocs'

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
# export PATH=$PATH:/Users/johanramne/bin/:/Users/johanramne/.local/bin/:/Library/TeX/
export WORKON_HOME=~/.venv/
eclw () {
    nohup /Applications/Emacs.app/Contents/MacOS/bin/emacsclient -c $@ > ~/tmp/nohup_emacs.out &
    }
