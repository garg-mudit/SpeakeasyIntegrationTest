#!/bin/bash

# Exit the script immediately if any command fails (non-zero exit code).
# This prevents the script from continuing in a broken state.
set -e

# Set up a trap to catch termination signals (SIGINT from Ctrl+C or SIGTERM from pipeline cancel).
# When caught, print a message and exit with status 1.
# This ensures the script exits gracefully instead of silently failing or hanging.
trap "echo '🛑 Cancelled or interrupted. Exiting...'; exit 1" SIGINT SIGTERM
