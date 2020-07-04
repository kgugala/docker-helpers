#!/usr/bin/env python3

import sys
import os

with open(sys.argv[1], 'r') as fp:
    template = fp.read()

dockerfile = template.format(
    UID = os.getuid(),
    UNAME = os.environ['USER'],
    HOME = os.environ['HOME'])

with open(sys.argv[2], 'w') as fp:
    print(dockerfile, file=fp)

