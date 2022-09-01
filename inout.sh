#!/bin/bash

read -p "Input a filename: " filename

echo $filename

cat << EOF > /tmp/$filename
An old silent pond...
A frog jumps into the pond,
splash! Silence again.

Autumn moonlight-
a worm digs silently
into the chestnut.

In the twilight rain
these brilliant-hued hibiscus -
A lovely sunset.
EOF

cat /tmp/$filename

echo "Task finished" >&2
