# ansible-templates

Install Debian servers with Ansible

## Bootstrap a server

```bash
$ git clone git@github.com:christianhellsten/ansible-templates.git
$ cd ansible-templates
$ SSH_USER=christian ADMIN_USER=christian ADMIN_EMAIL=christian@aktagon.com ADMIN_PUBKEY=~/.ssh/id_rsa.pub HOSTNAME=app ./bootstrap.sh
```

## Install an app server

```bash
$ ADMIN_USER=christian ./run.sh app-server.yml
```
