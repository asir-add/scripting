#!/usr/bin/python3
try:
	f = open('/etc/passwd')
	for no, line in enumerate(f, 1):
		if '/bin/bash' in line:
			line = line.strip()
			print(f'{no} {line}')
except IOError as e:
	print(e)
