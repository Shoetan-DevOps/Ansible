#!/bin/bash

echo "Create ansible aliases for commonly used commands"

cat << 'EOF' > /home/ansible/.bash_aliases
alias gits="git status"
alias gita="git add ."
alias las="cat /home/ansible/.bash_aliases"
alias lka="ls /etc/ansible/roles/kubeadm/"
alias ekat="vi /etc/ansible/roles/kubeadm/tasks/main.yml"
alias epl="vi /etc/ansible/playbooks/playbook.yml"
alias rpl="ansible-playbook /etc/ansible/playbooks/playbook.yml"
alias drpl="ansible-playbook /etc/ansible/playbooks/playbook.yml --check"
EOF

echo "complete file creation"

sudo chmod ugo+x /home/ansible/.bash_aliases

echo "COMPLETE - NOW RUN COMMAND =====> 'source /home/ansible/.bash_aliases'"
