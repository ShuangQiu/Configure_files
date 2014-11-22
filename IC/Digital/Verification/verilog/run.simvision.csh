##=============================================================================
##     FileName: run.simvision.csh
##      Project: clock
##         Desc: 
##       Author: Kechang Shao
##        Email: shao.kc@gmail.com
##   Department: UESTC.ME
##     Homepage: 
##      Version: 0.0.1
##      Created: 2014-10-25 10:51:14
##   LastChange: 2014-10-25 10:51:14
##      History:
##=============================================================================

#!/bin/csh -f


set CUR_DIR = `pwd`
set TB_NAME=`basename $CUR_DIR`
echo ${TB_NAME}

if (!  -d waves/) then
mkdir waves
endif


irun top.v clock_devider.v +access+rwc +tcl+top.simvision.tcl -loadpli1 \
    debpli:novas_pli_boot

#rm -rf INCA_libs/
