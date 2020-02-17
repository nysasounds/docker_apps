#!/bin/bash
IMG="${1}"
[ -n "${IMG%/*}" ] || exit 1
[ -d "${IMG}" ] || exit 1

[[ "${IMG%/*} " =~ "-base " ]] && docker build --no-cache --rm --force-rm -t nysasounds/${IMG%/*} ${IMG%/*}
[[ "${IMG%/*} " =~ "-base " ]] || docker build --no-cache --rm --force-rm --build-arg USER_ID=$(id -u ${USER}) --build-arg GROUP_ID=$(id -g ${USER}) -t nysasounds/${IMG%/*} ${IMG%/*}
