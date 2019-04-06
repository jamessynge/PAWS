#!/bin/bash -e

usage() {
  echo -n "##################################################
# Start the PANOPTES Administrative Web Site (PAWS)
# 
# This will start a docker container running the PAWS service.
##################################################
 $ $(basename $0)
 
 Example:
  ./start_paws.sh
"
}

# Explicit volume mapping handles symlinks better on ubuntu.
docker run --rm -d -it --network host \
        -v /var/panoptes:/var/panoptes \
        -v /var/panoptes/images:/var/panoptes/images \
        -v /var/panoptes/images/fields:/var/panoptes/images/fields \
        --name paws \
        gcr.io/panoptes-survey/paws