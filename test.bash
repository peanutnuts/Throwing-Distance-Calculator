#!/bin/bash -vx
# SPDX-FileCopyrightText: 2026 Ibuki Haga
# SPDX-License-Identifier: BSD-3-Clause

set -e

ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0

# throwdis を実行してプロンプト行を除外
out=$(./throwdis 10 45 1)
rc=$?

[ $rc -eq 0 ] || ng "$LINENO"

expected="11.116
1.572
10.937
-49.720"

# 比較
[ "$out" = "$expected" ] || ng "$LINENO"

# ===== 異常入力テスト =====

# あ：失敗すること
( ./throwdis あ 45 1 ) && ng "$LINENO" || true

# a：失敗すること
( ./throwdis a 45 1 ) && ng "$LINENO" || true

# 何も入力なし：失敗すること
( ./throwdis ) && ng "$LINENO" || true

[ $res -eq 0 ] && echo OK
exit $res
