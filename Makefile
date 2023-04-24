all: requirements provision

requirements:
	@ansible-galaxy collection install -r ./requirements.yml

provision:
	@$(MAKE) requirements
	@ansible-playbook site.yml -i inventory/local/hosts.ini
