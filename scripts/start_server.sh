#!/usr/bin/bash
# Start Apache server and log the steps

echo "Running script..." > /tmp/script.log
echo "Checking environment..." >> /tmp/script.log
env >> /tmp/script.log

echo "Starting Apache server..." >> /tmp/script.log
service apache2 start >> /tmp/script.log 2>&1

echo "Apache server started." >> /tmp/script.log