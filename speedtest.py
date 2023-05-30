#!/usr/bin/python
# -*- coding: utf-8 -*-

import subprocess

cp = subprocess.run(["speedtest", "--server", "21569", "--json"])
print(cp.stdout)
