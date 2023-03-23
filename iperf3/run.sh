#!/usr/bin/env ash
# shellcheck shell=ash

# Run iperf3 in the server mode
exec su iperf -s /bin/ash -c "iperf3 -s"
