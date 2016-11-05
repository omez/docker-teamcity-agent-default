FROM jetbrains/teamcity-agent
MAINTAINER Alexander Sergeychik <alexander.sergeychik@gmail.com>

RUN apt-get update && \
	apt-get install -y wget unzip git software-properties-common \
	&& rm -rf /var/lib/apt/lists/*

# Ansible installation
RUN apt-add-repository ppa:ansible/ansible && apt-get update && apt-get install -y ansible	
