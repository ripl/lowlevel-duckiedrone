#!/bin/bash

source /environment.sh

# initialize launch file
dt_launchfile_init

# YOUR CODE BELOW THIS LINE
# ----------------------------------------------------------------------------


# NOTE: Use the variable CODE_DIR to know the absolute path to your code
# NOTE: Use `dt_exec COMMAND` to run the main process (blocking process)

# remap I2C
if [ "${DEBUG}" = "1" ]; then echo "Remapping I2C..."; fi
python2 $CODE_DIR/packages/pidrone_pkg/scripts/remap_i2c.py
if [ "${DEBUG}" = "1" ]; then echo "Done!"; fi

# launching app
dt_exec roslaunch pidrone_pkg drone.launch


# ----------------------------------------------------------------------------
# YOUR CODE ABOVE THIS LINE

# terminate launch file
dt_launchfile_terminate