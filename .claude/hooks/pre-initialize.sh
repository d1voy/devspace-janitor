#!/bin/bash
mkdir -p /tmp/empty_slate
rsync -a --delete /tmp/empty_slate/ /home
