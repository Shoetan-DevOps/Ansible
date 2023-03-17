#!/bin/bash

echo "Create ansible aliases for commonly used commands"

cat << 'EOF' > /home/ansible/.bash_aliases
alias gits="git status"
alias gita="git add ."
alias lr="ls /etc/ansible/roles/"
alias lp="ls /etc/ansible/playbooks/"
alias cba="cat /home/ansible/.bash_aliases"
alias lcn="ls /etc/ansible/roles/core-networking/"
alias ecnt="vi /etc/ansible/roles/core-networking/tasks/main.yml"
alias lka="ls /etc/ansible/roles/kubeadm/"
alias ekat="vi /etc/ansible/roles/kubeadm/tasks/main.yml"
alias lkw="ls /etc/ansible/roles/kube-worker/"
alias ekwt="vi /etc/ansible/roles/kube-worker/tasks/main.yml"
alias lkm="ls /etc/ansible/roles/kube-master/"
alias ekmt="vi /etc/ansible/roles/kube-master/tasks/main.yml"
alias eawpl="vi /etc/ansible/playbooks/ansible-worker.yml"
alias epl="vi /etc/ansible/playbooks/playbook.yml"
alias ecnpl="vi /etc/ansible/playbooks/core-networking.yml"
alias rawpl="ansible-playbook /etc/ansible/playbooks/ansible-worker.yml"
alias drawpl="ansible-playbook /etc/ansible/playbooks/ansible-worker.yml --check"
alias rpl="ansible-playbook /etc/ansible/playbooks/playbook.yml"
alias drpl="ansible-playbook /etc/ansible/playbooks/playbook.yml --check"
alias rcn="ansible-playbook /etc/ansible/playbooks/core-networking.yml"
alias drcn="ansible-playbook /etc/ansible/playbooks/core-networking.yml --check"
EOF

echo "complete file creation"

sudo chmod ugo+x /home/ansible/.bash_aliases

echo "COMPLETE - NOW RUN COMMAND =====> 'source /home/ansible/.bash_aliases'"
