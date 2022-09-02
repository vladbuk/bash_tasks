#!/bin/bash

cat /etc/passwd | tee /tmp/passwd.new | grep nologin && \
sed -i 's/\/usr\/sbin\/nologin/\/bin\/bash/g' /tmp/passwd.new
