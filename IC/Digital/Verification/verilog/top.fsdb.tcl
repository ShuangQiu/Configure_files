# FORMAT:fsdb

#call fsdbDumpfile "./waves/waves.fsdb"  10240  #waveform size limit:10G
call {fsdbDumpfile} {"./waves/waves.fsdb"}

#call fsdbDumpon +fsdbfile+./waves/waves.fsdb
#
##dumping for all FSDB will be turnd on.
call fsdbDumpon

#call fsdbDumpvars 0 top


# === for Normal Simulation ===
call fsdbDumpvars 1 top
#call fsdbDumpvars

run

exit
