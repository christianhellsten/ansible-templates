#
# Example
#
#   $ SSH_USER=root ./run.sh app-server.yml
#   $ SSH_USER=root SUDO=false ./run.sh app-server.yml
#
ansible-playbook $1 \
  -i hosts.yml \
  -e "ssh_user=$SSH_USER" \
  -e "use_sudo=${SUDO-true}"
