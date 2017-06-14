PLAYBOOK?=all.yml

YML_FILES := $(wildcard *.yml)

all: $(YML_FILES)
	ansible-playbook -K -i inventory -u cyrille --ask-pass --ask-become-pass  $^

play: roles
	ansible-playbook -K -i inventory -u cyrille --ask-pass --ask-become-pass ${PLAYBOOK}

roles: requirements.yaml roles
	ansible-galaxy install -r requirements.yaml  -p roles/

clean:
	$(RM) -r roles
	$(RM) *.retry