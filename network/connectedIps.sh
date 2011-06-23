#!/bin/bash
netstat -plan | grep :80 | awk '{print $5}' | sed 's/::ffff://g' | awk -F: '{print $1}' | sort | uniq -c | sort -n
