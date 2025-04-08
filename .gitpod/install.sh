#!/bin/sh

# clean workspace folder
rm -rf /workspace/alpine
mkdir /workspace/alpine
ln -s /workspace/alpine ~/Projects
git init /workspace/alpine

cd ~

exit 0