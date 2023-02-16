#!/bin/bash
echo "Update Server before Work"
apt update 
echo "Server Updated"
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -c ssm:AmazonCloudWatch-linux-adi-L2P6 -s
sudo systemctl start amazon-cloudwatch-agent.service
sudo systemctl enable amazon-cloudwatch-agent.service
sudo systemctl status amazon-cloudwatch-agent.service
