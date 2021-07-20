#!/bin/bash

# Check that we don't get debug symbols [#@] on some test texts.

out=$(mktemp -t hash-count-swe-dan.XXXXXXXXXX)
trap 'rm -f "${out}"' EXIT

echo "Checking for debug symbols"

for dir in swe-dan dan-swe; do
    src=${dir%%-*}

    cat texts/*."${src}".txt | apertium -f html-noent -d . "${dir}" > "${out}"

    current=$(grep -c '[#@]' "${out}" || true)

    if [[ "${current}" -gt 0 ]]; then
        echo "ERROR: texts/*.${src}.txt translated through ${dir} gave debug sybols [#@]:"
        grep -n '[#@]' "${out}"
    fi
done
