import os
import sys

if len(sys.argv) == 1:
    os.system("docker run --rm -it -v ./:/local --name ansible git.lmccormick.com/lmc/ansible:v2.13.13 bash")

if len(sys.argv) >= 3:
    print("\nToo many parameters, only one parameter of the following supported.\n--Supported parameters:\ngo\nvars\n")

if sys.argv[1] == "go":
    os.system("docker run --rm -it -v ./:/local --name ansible git.lmccormick.com/lmc/ansible:v2.13.13 ansible-playbook -i inventory.yml ./playbooks/00-initial.yml")
