

# install act
curl -s https://raw.githubusercontent.com/nektos/act/master/install.sh | sudo bash

# verify 
act --version

# create a test repo folder and initialize it as git repository
mkdir github-actions-sftp-test && cd github-actions-sftp-test
git init
git add .
git commit -m "Initial commit for act local testing"

# check if sftp server is running
systemctl status ssh

# create sftp.yml workflow in github-actions-sftp-test (to simulate GitHub Actions)
.github/workflows/sftp.yml 

# check you docker status
docker ps
#CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES

# run your workflow locally with act
act workflow_dispatch --secret-file .secrets
# Successfully executed transfer data to all host

