#!/bin/bash

# Gets memory usage
free -h --si | awk '/^Mem:/ {print $3}'
