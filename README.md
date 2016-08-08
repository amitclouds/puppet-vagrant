# Puppet Master & Agent deployment using Vagrant.

### Files Overview


1. Vagrantfile -  primary configuration
 * create two Vagrant box,  puppet-3.4.3 Master & Agent  on ubuntu 14.04 base box.
 * configure Ip address.
 * configure hostname.
 * provisioning shell scrip for bootstraping.
 
2. master.sh -  Bash script file
 * Install puppetmaster ubuntu 14.04 box
 * configure one manifest for agent node using file resourse
3. agent.sh - Bash script file
 * Install puppet agent  ubuntu 14.04 box

Too keep this setup simply I'm using external Shell script provisioning shell script commands which then run inside the virtual machine.

### Prerequisites
* Vagrant 
* Virtualbox
 
### Using this vagrant-puppet porject
* Clone git repository to Vagrant's host machine.
* change directory to cloned repo.
* then use following commands

To spinup puppet msater and agent vagrant box.

```
$ vagrant up 
```
login in master node first.
```
$ vagrant ssh master
```


list all certificates on master node.
```
sudo puppet cert list --all
```
Signing agent certificates.
Before nodes with the Puppet agent component can fetch configurations or appear in the console, an administrator needs to sign their certificate requests.
```
$ sudo puppet cert sign agent.test.node 
```
Exit from master node.
```
$ exit  
```
Now login in agent node.


```
$ vagrant ssh agent
```
Triggered agent node manually.

```
$ sudo puppet agent -t 
```
Now there should be one file in /tmp directory with the name of. 
```
$ cat /tmp/hello-file
From Puppet
Hello World

```














