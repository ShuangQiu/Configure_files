####=============================================================================
####     FileName: top.simvision.tcl
####      Project: clock
####         Desc: 
####       Author: Kechang Shao
####        Email: shao.kc@gmail.com
####   Department: UESTC.ME
####     Homepage: 
####      Version: 0.0.1
####      Created: 2014-10-25 10:53:09
####   LastChange: 2014-10-25 10:54:10
####      History:
####=============================================================================

# FORMAT
database -open -shm waves -into ./waves -default -compress
#database -open -vcd waves -into waves/waves.vcd -event

# CHIPTOP
probe -create top -all -depth 1 -database waves
probe -create top.INST_clock_devider  -all -depth 1 -database waves
#probe -create top.test_1 -all -depth 1 -database waves

run
exit
