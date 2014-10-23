
# NC-Sim Command File
# TOOL:	ncsim	09.20-p007
#
#
# You can restore this configuration with:
#
#     irun +access+wrc factorial.sv -input wave.tcl -input /home/shaokc/Configure_files_master/IC/Digital/Verification/sv/5/restore.tcl
#

#database -open -shm -into ./skmobile skmobile -default -event
#database -open -shm ./skmobile/skmobile  -incsize 1M -incfiles 4
database -open -shm skmobile  -incsize 100M -incfiles 400
probe -create -all -variables -database skmobile
#probe -create -database waves test.reg_a

run
exit
