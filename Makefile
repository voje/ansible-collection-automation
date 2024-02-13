setup-dev: ln git-hooks install-dependencies

# Link collection as if it were installed by $ ansible-galaxy install collection
COLL_PATH=$(shell realpath ~/.ansible/collections/ansible_collections/voje/automation)
ln:
	rm -rf ${COLL_PATH}
	ln -s -T ${PWD} ${COLL_PATH}

git-hooks:
	touch .git/hooks/pre-push && chmod +x .git/hooks/pre-push
	echo "ansible-lint" > .git/hooks/pre-push

install-dependencies:
	pip3 install --upgrade \
		ansible \
		ansible-lint \
		molecule \
		'molecule-plugins[podman]'

lint:
	ansible-lint

# Molecule test
molte:
	cd extensions && molecule test

run-local:
	ansible-playbook -i localhost, --connection=local playbooks/go.yml
