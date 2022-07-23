#!/bin/bash

## download and cache renicename
[ "$(uname -s)" = "Darwin" ] && __i="$HOME/Library/Caches" || __i="$HOME/.cache" && __i="${IMPORT_CACHE:-${XDG_CACHE_HOME:-${LOCALAPPDATA:-${__i}}}/$XDG_HOME_CACHE/renicename}" && [ -r "$__i" ] || curl -sfLSo "$__i" --create-dirs https://raw.githubusercontent.com/divopsresources/wicked-cool/master/10/renicename && . "$__i" && unset __i && 

type renicename
