# Ansible Collection - voje.automation

## Install
```bash
ansible-galaxy collection install git@github.com:voje/ansible-collection-automation.git
```

## Development
We 'install' our development version by linking the git directory.
```bash
cd ~/git/ansible-collection-automation
rm -r ~/.ansible/collections/ansible_collections/voje/automation
ln -s $(pwd) ~/.ansible/collections/ansible_collections/voje/automation
ansible-galaxy collection list | grep voje.automation
```
