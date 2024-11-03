# Ansible 2.13.13 on Docker

#### Git Clone the repo
`git clone https://git.lmccormick.com/lmc/docker_ansible-2.13.13.git`<br>

#### Pull the Docker Image
`python3 pull.py`

When running the container using the run script below, the current directory will get mounted into the /local directory within the container.<br>
So your typical ansible project directory can get built out within the docker_ansible-2.13.13 directory.

#### Run the run script to get bash within the container.
`python3 run.py`<br>


