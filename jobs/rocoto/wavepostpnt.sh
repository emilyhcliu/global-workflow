#!/bin/ksh -x

###############################################################
echo
echo "=============== START TO SOURCE FV3GFS WORKFLOW MODULES ==============="
. $HOMEgfs/ush/load_fv3gfs_modules.sh
status=$?
[[ $status -ne 0 ]] && exit $status

###############################################################
echo
echo "=============== START TO RUN WAVE_POST_PNT ==============="
# Execute the JJOB
$HOMEgfs/jobs/JGLOBAL_WAVE_POST_PNT
status=$?
[[ $status -ne 0 ]] && exit $status

# Exit out cleanly
exit 0
