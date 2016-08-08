#!/usr/bin/env bash
# adding puppet master host address  in agent's  host file
echo 10.0.0.10 master.test.node >> /etc/hosts
# system update
apt-get update -y
#install puppet agent
apt-get install -y puppet
#configure
sed -i '/main/ a server=master.test.node' /etc/puppet/puppet.conf
#enable puppet agent
puppet agent --enable
#restart puppet agent
service puppet restart
