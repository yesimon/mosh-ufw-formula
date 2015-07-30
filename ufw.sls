ufw:
  pkg.latest

ufw-default-deny:
  cmd.run:
    - name: ufw default deny
    - require:
      - pkg: ufw

ufw-dns-out:
  cmd.run:
    - name: ufw allow out 53
    - require:
      - pkg: ufw

ufw-ssh:
  cmd.run:
    - name: ufw allow ssh
    - require:
      - pkg: ufw
      - pkg: openssh

ufw-mosh:
  cmd.run:
    - name: ufw allow mosh
    - require:
      - pkg: ufw
      - pkg: mosh

ufw-enable:
  cmd.run:
    - name: yes | ufw enable
    - require:
      - pkg: ufw

