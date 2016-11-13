#!/usr/bin/env bash

cd gallery
ls | xargs -i bash -c "identify {} > /dev/null 2> /dev/null || echo {}"
# ls | xargs -i bash -c "identify {} > /dev/null 2> /dev/null || echo {}" | xargs rm
