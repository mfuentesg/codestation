all: provision

provision:
	@ansible-playbook site.yml -i inventory/local/hosts.ini
