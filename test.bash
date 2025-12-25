#!/bin/bash -vx
# SPDX-FIleCopyrightText: 2025 Ibuki Haga
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0

# throwdis を実行してプロンプト行を除外
out=$(printf "10\n45\n1\n0\n" | python3 throwdis | grep -E "到達距離|落下時間|進行角度")

expected="到達距離          : 11.116 m
落下時間          : 1.572 s
落下時の進行角度  : -49.720 deg"

# 比較
[ "$out" = "$expected" ] || ng "$LINENO"

[ $res -eq 0 ] && echo OK
exit $res
