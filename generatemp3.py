#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2016 dyens <dyens@dyens>
#
# Distributed under terms of the MIT license.

u"""
Генерирует mp3 из midi
"""

import subprocess
import os

COMMAND = 'timidity %s.midi -Ow -o - | ffmpeg -i - -acodec libmp3lame -ab 64k %s.mp3'

# удалим предыдущие файлы
files = [f for f in os.listdir() if f[-3:]=='mp3']
for f in files:
    os.remove(f)


files = [f[:-5] for f in os.listdir() if f[-4:]=='midi']

for f in files:
    subprocess.Popen(COMMAND % (f,f), shell=True)


