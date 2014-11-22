#!/usr/bin/python


import os
import re


File_seperator = "####################ABCDEFGHIJKLMNOPQRSTUVWXYZ####################"
Merge_file = open("shaokc.txt", "r")

for lines in (Merge_file.readlines()):
  if re.match(File_seperator + "(.*?)" + File_seperator, lines, flags=0):
    m = re.match(File_seperator + "(.*?)" + File_seperator, lines, flags=0)
    file = m.groups()[0] 
    fp = open(file, "w")
    continue
  fp.writelines(lines)

Merge_file.close
