#! /usr/bin/env bash

# Update and start specified server
# This script runs as a cron job


server=$1


./$server force-update
./$server start

