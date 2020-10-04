#
# Example
#
#   $ SSH_USER=root ADMIN_USER=root ADMIN_EMAIL=admin@localhost ADMIN_PUBKEY=~/.ssh/id_rsa.pub ./bootstrap.sh
#   $ SUDO=true SSH_USER=admin ADMIN_USER=admin ADMIN_EMAIL=admin@localhost ADMIN_PUBKEY=~/.ssh/id_rsa.pub ./bootstrap.sh
#
ADMIN_PUBKEY=`cat ${ADMIN_PUBKEY}`
ansible-playbook bootstrap.yml \
  -i hosts.yml \
  -e "ssh_user=$SSH_USER" \
  -e "admin_user=$ADMIN_USER" \
  -e "admin_email=$ADMIN_EMAIL" \
  -e "admin_pubkey=\"$ADMIN_PUBKEY\"" \
  -e "use_sudo=${SUDO-false}"
