#!/bin/bash

# Insert the SSH public key into the VM
cat << EOT >> /home/vagrant/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCQyFS9+lVGNjBNhBtjV67bN7jS4K3vO9oOwHnMFs1glFXXS5le5pYEeuPCpq8lMSDgYdAh+pRVtgtAooGNnPJQ3JzX0ro7JD26/KECSozlN5E3mi0IfZ/eyAyIMhfiKpjRtqpC3Qyq/ack3K/x/rLSv8AegC8ePq2C+lmuDTnJ3WCQKIbXb12PqEWjHov0Zyh1b4DTHbPjzM/meXqccy7sKBkHdwdn5dhO9N5XJkff9REJSRa28Lr2Wj77QZSd4CN3Gcgj3v6iypsX4LiN0tM+ZavqJyYAwdPDYmcMOHcYKt4zAX/wdKT+cuTvv6UKGeOeor6p7Vnem0iKenwrolAW4HapIEO7Oei+o05JyrAP4xA+tWW3n7PbWrdOFvwQlPrx0uC2VESI90PCcT4ptL+u5zgD246V5Gxia73bRe5SY/zKtfEQVlViQvPnyMms7x+R0zqYYFhN6AhWuUjx2AFKduU3WZacbU1VRibNTj2AuZjF+D5+pfNoNvd661wy5zs= victor@PLX10749-002
EOT

#date > /etc/vagrant_box_build_time

#mkdir -pm 700 /home/vagrant/.ssh
#curl -L https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub -o /home/vagrant/.ssh/authorized_keys
#chmod 0600 /home/vagrant/.ssh/authorized_keys
#chown -R vagrant:vagrant /home/vagrant/.ssh
