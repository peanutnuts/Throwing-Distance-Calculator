#!/bin/bash -vx
# SPDX-FIleCopyrightText: 2025 Ibuki Haga

ng () {
        echo ${1}行目が違うよ
	res=1
}

res=0

out=$(seq 5 | ./plus)
[ "${out}" = 15.0 ] || ng "$LINENO"

[ "${out}" = 15.0 ] && echo OK
exit $res
