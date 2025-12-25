#!/bin/bash -vx
# SPDX-FIleCopyrightText: 2025 Ibuki Haga
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0

# throwdis を実行してプロンプト行を除外
out=$(./throwdis 10 45 1 0 | grep -E "到達距離|落下時間|進行角度")

expected="11.116
1.572
-49.720"

# 比較
[ "$out" = "$expected" ] || ng "$LINENO"

[ $res -eq 0 ] && echo OK
exit $res
