#!/usr/bin/python


import os

Dir = "./"

File_seperator = "####################ABCDEFGHIJKLMNOPQRSTUVWXYZ####################"
Merge_file = open("shaokc.txt", "w")

Filelist = os.listdir(Dir)

for file in (Filelist):
  File = Dir + file
  if os.path.isfile(File):
    print file
    fp = open(File, "r")
    Merge_file.writelines(File_seperator + file + File_seperator + "\n")
    Contents = fp.readlines()
    Merge_file.writelines(Contents)
    fp.close

Merge_file.close
