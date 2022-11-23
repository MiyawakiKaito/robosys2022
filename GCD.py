#!/usr/bin/python3
# SPDX-FileCopyrightText: 2022 Miyawaki Kaito
# SPDX-License-Identifier: BSD-3-Clause

import sys
import math

line = 2

for line in sys.stdin:
    try:
        ans = print(math.gcd(line))
    except:
        ans = print(math.lcm(line))

print(ans)

