#!/bin/bash -vx
# SPDX-FileCopyrightText: 2026 Ibuki Haga
# SPDX-License-Identifier: BSD-3-Clause

set -e

ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0

# ===== 正常入力テスト =====

out=$(echo "10 45 1" | ./throwdis)

rc=$?
[ $rc -eq 0 ] || ng "$LINENO"

expected="11.116
1.572
10.937
-49.720"

[ "$out" = "$expected" ] || ng "$LINENO"

# ===== 異常入力テスト =====

# h < 0
(echo "10 45 -1" | ./throwdis) && ng "$LINENO"

# tが60(s)以上になる
(echo "1000 45 10000" | ./throwdis) && ng "$LINENO"

# 入力あ
(echo "あ 45 1" | ./throwdis) && ng "$LINENO"

# 入力a
(echo "a 45 1" | ./throwdis) && ng "$LINENO"

# 入力なし
(./throwdis < /dev/null) && ng "$LINENO"

[ $res -eq 0 ] && echo OK
exit $res
