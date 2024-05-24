#!/usr/bin/python3

import subprocess

passwd = subprocess.check_output('cat /etc/passwd | grep ^.*:.*:[0-9][0-9][0-9][0-9][0-9]*:.*$', shell=True)
print(passwd)