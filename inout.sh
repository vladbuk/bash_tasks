#!/bin/bash

#
# ./inout.sh >/dev/null 2>/tmp/stderr
#

poem="An old silent pond...
A frog jumps into the pond,
splash! Silence again.

Autumn moonlight-
a worm digs silently
into the chestnut.

In the twilight rain
these brilliant-hued hibiscus -
A lovely sunset."

echo "Enter filename: " > /dev/tty
IFS='' read -r filename

echo "$poem" | tee /tmp/$filename

>&2 echo "Task finished"
