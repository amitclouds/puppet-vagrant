#!/usr/bin/env bash
#add agent host name and adress in master's host file
echo 10.0.0.11 agent.test.node >> /etc/hosts
apt-get update -y
#install puppet master
apt-get install -y puppetmaster
#create site.pp manifest file under /etc/puppet/manifests/
echo "
node 'agent.test.node' {
 file { '/tmp/hello-file':
    ensure  => 'present',
    replace => 'no', # this is the important property
    content => \"From Puppet\nHello World\n\",
    mode    => '0644',
  }
}" > /etc/puppet/manifests/site.pp
