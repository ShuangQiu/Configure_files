#!/bin/csh -f


set CUR_DIR = `pwd`
set TB_NAME=`basename $CUR_DIR`
echo ${TB_NAME}

if (!  -d waves/) then
mkdir waves
endif

#specify the patch to the FSDB PLI library and dumper engine as paths of the LD_LIBRARY_PATH environment variable. 
setenv LD_LIBRARY_PATH "$LD_LIBRARY_PATH : /tooltop/springsoft/verdi/201304/share/PLI/IUS/LINUX64/boot" 


#bsub -Is  -q s1grid567 irun top.sv test.sv mem.sv +access+rwc

bsub -Is  -q s1grid567 irun top.v +access+rwc +tcl+top.fsdb.tcl -loadpli1 \
    debpli:novas_pli_boot

rm -rf INCA_libs/
mv waves/waves.fsdb waves/${TB_NAME}.fsdb
