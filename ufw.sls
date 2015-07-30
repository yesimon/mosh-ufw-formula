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

ufw-mosh:
  cmd.run:
    - name: ufw allow 60000:61000/udp
    - require:
      - pkg: ufw

ufw-enable:
  cmd.run:
    - name: yes | ufw enable
    - require:
      - pkg: ufw

