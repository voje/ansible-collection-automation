# Link collection as if it were installed by $ ansible-galaxy install collection
COLL_PATH=$(shell realpath ~/.ansible/collections/ansible_collections/voje/automation)
ln:
	rm -rf ${COLL_PATH}
	ln -s -T ${PWD} ${COLL_PATH}

# Molecule test
molte:
	cd extensions && molecule test

git-hooks:
	touch .git/pre-push && chmod +x .git/pre-push
	echo "ansible-lint" > .git/pre-push

lint:
	ansible-lint
