#!/bin/bash
yum install -y deltarpm
yum install -y update

yum install -y docker
sudo tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://08a4uas2.mirror.aliyuncs.com","http://a95d9975.m.daocloud.io"]
}
EOF
sudo systemctl daemon-reload
sudo systemctl restart docker
