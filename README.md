Spacewalk playbooks and roles
==============


Install a full Spacewalk server on CentOS 7 and also adds customizations:
- CentOS 6 base+extras+epel+updates repos, channel and activation key 
- CentOS 7 base+extras+epel+updates repos, channel and activation key
- Ubuntu 16.06 base+security repos, channel and activation key (and repo sync scripts)
- Ubuntu 14.04 base+security repos, channel and activation key (and repo sync scripts)
- Ubuntu 12.04 base+security repos, channel and activation key (and repo sync scripts)

Thanks to geerlingguy's iptables role, which is included here to configure the firewall on the server.

####To do:

- Add Ubuntu support to client role (16.04 now working and tested)
- Look at also adding Debian Jessie/Wheezy

What my inventory (/etc/ansible/hosts) looks like:

```
localhost ansible_connection=local
```

###How to run:
####Server:
```
ansible-playbook spacewalk.yml -e site=jcu #Replace jcu by yours !
```

The server initial setup will take a while to run - once this is done it will prompt you if you are ready.
At this point you should browse to the newly installed spacewalk instance in your browser and set up an admin username and password.
The prompt will ask for the password to continue.

####Client:
```
ansible-playbook spacewalk-clients.yml
```

Extra credits:
Blog post: [Running Ubuntu Servers with Spacewalk](http://www.devops-blog.net/spacewalk/registering-ubuntu-and-debian-servers-with-spacewalk)
Original source from https://github.com/fayaaz/spacewalk.ansible.git
Thank you for his work.
