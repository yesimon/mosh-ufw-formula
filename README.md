# mosh-ufw-formula
Example salt formula for installing mosh and restrictive ufw on ubuntu

This basic state tree simply installs mosh and ufw, denies all incoming and outgoing traffic by default, then opens incoming ports for ssh and mosh, and outgoing ports for DNS.

##Installation

###Masterless

1. Login to a Ubuntu machine
2. Follow salt [masterless quickstart](http://docs.saltstack.com/en/latest/topics/tutorials/quickstart.html) but don't create state tree
3. Install the mosh ufw states:
  `sudo git clone https://github.com/yesimon/mosh-ufw-formula.git /srv/salt/`
4. Run highstate: `sudo salt-call --local state.highstate`
5. (Optional) Verify ufw rules with `sudo ufw status verbose`
