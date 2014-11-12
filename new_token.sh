#!/bin/bash
token=$(curl -s -w "\n" https://discovery.etcd.io/new)
echo ${token}
sed --in-place "s!https.*!${token}!" ./user-data
