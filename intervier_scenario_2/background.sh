#!/bin/bash

echo "while true; do top &; done" > /tmp/test.sh
chmod +x /tmp/test.sh
bg /tmp/test.sh &