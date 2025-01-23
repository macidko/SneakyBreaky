#!/bin/bash
echo "NumLock key pressing process started. Press Ctrl+C to stop."

# NumLock'u aç/kapa
while true; do
    echo -ne "\033[2N" > /dev/console
    sleep 5
done
