#!/bin/bash
START="$(date +%s)"
$@
DURATION=$[ $(date +%s) - ${START} ]
echo  "Completed in ${DURATION} seconds"
