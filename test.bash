#!/bin/bash -vx
# SPDX-FIleCopyrightText: 2025 Ibuki Haga

ng () {
        echo "${1}行目が違うよ"
        res=1
}

res=0

# 入力を与えて throwdis を実行
out=$(printf "10\n45\n1\n0\n" | python3 throwdis)

# 期待される出力
expected="到達距離          : 11.116 m
落下時間          : 1.572 s
落下時の進行角度  : -49.720 deg"

# 比較
[ "$out" = "$expected" ] || ng "$LINENO"

[ $res -eq 0 ] && echo OK
exit $res
