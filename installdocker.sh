#!/bin/bash

if ! command -v docker &> /dev/null
then
   echo  $(sudo apt-get update)
   echo "Update Run" 
   echo $(sudo apt-get install apt-transport-https ca-certificates curl software-properties-common)
   echo "Certs Installed" 
    
    if ! command -v curl &> /dev/null
    then 
       echo  $(sudo apt-get install curl)
        echo "curl installed"
       echo $(curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg)
    else
        echo "curl does not need to be installed...proceeding"
        echo $(curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg)
    fi

    echo $(echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(>
    echo "deb run"
    echo $(sudo apt-get update)
    echo "Update installed"
    echo $(sudo apt-get install docker-ce -y)
    echo "Docker-CE Installed"
    echo $(sudo systemctl status docker)
    echo $(sudo usermod -aG docker fikradev)
    echo "user added to sudoers group"

    echo "Installation of complete"
else
        echo $(docker --version)
fi
