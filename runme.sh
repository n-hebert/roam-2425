#!/usr/bin/env bash

ROAMHOME="${ROAMHOME:-/tmp/roam2425}"
KNOWN_BAD_ORG="${KNOWN_BAD_ORG:-${ROAMHOME}/Roam/KNOWN-BAD.org}"

openKnownBad(){
    HOME=${ROAMHOME}
    emacs
}

# You can force it to open if you want
if [[ ${1} == "--force" ]]; then
    openKnownBad
else # otherwise, this program is extremely paranoid to help avoid wasted time on "good" files
    case $(md5sum ${KNOWN_BAD_ORG} | sed 's/  .*//') in
        "d3cbb66c214d8b7ada84252b6d0fe3f0")
            echo ${KNOWN_BAD_ORG} -- HASH PASS
            openKnownBad
            ;;
        *)
            echo "${KNOWN_BAD_ORG} HASH FAIL -- Please check the input file or add '--force'"
            exit 1;;
    esac
fi
