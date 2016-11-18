#!/usr/bin/env bash

find gallery -type f | xargs -i bash -c "identify {} > /dev/null 2> /dev/null || echo {}"
