#!/bin/csh -f

set pattern="shaokc nieqing"

#set pattern_old="shaokc"
#set pattern_new="nieqing"
#echo ${pattern} | cut -d # -f 1
#echo  ${pattern}
#echo  ${pattern} | cut -f 1

#set pattern_old=`echo ${pattern} | cut -f1`
#set pattern_new=`echo ${pattern} | cut -f2`

set pattern_old=`echo ${pattern} | awk '{print $1}'`
set pattern_new=`echo ${pattern} | awk '{print $2}'`

mv ${pattern_old}.tb ${pattern_new}.tb
