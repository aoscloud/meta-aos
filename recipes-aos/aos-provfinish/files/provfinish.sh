#!/bin/sh

# remove unprovisioned flag
rm -rf /var/aos/.unprovisioned

sync

# restart aos target
{
    sleep 1
    systemctl restart aos.target
} &
