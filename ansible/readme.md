## prerequisites ##
1. pre-create ec2 instance
2. ubuntu as base image

## command to rune ansible playbook ##
ansible-playbook ansible-roles.yaml -i inventory

## additional notes
1. make sure keypair.pem has the right permission
2. ec2 security group to allow http connection