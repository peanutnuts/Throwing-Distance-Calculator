[![test](https://github.com/peanutnuts/Throwing-Distance-Calculator/actions/workflows/test.yml/badge.svg)](https://github.com/peanutnuts/Throwing-Distance-Calculator/actions/workflows/test.yml)

# throwdisコマンド
throwdis コマンドを提供します。

入力に応じて，物を投げた際の挙動を計算し出力します。

入力は，物を投げた際の，
- 初速度`v0`(m/s)
- 発射角度`throw_deg`(deg)
- 初期高さ`h`(m)

出力は，水平な地面，重力加速度9.806(m/s^2)における，
- 到達する水平距離`x`(m)
- 着地する時間`t`(s)
- 着地時の速度`v`(m/s)
- 着地時の進行角度`landing_deg`(deg)

# 使い方
半角英数字で以下を入力してください。

	$ cd Throwing-Distance-Calculator
	$ ./throwdis v0 throw_deg h

入力された値から計算を行い，以下を出力し，コマンドを終了します。

	x
	t
	v
	landing_deg

例）初速度`v0 = 10`, 発射角度`throw_deg = 45`, 初期高さ`h = 1` の場合，

	$ ./throwdis 10 45 1

と入力すると

	11.116
	1.572
	10.937
	-49.720

と出力されます。

# 注意点
- 発射角度`throw_deg`，着地時の進行角度`landing_deg`，の入力について，水平方向を角度0°とし、上向きの角度を正、下向きの角度を負とする。
- 投げた高さ`h`の入力について，０より小さい値を入力すると，終了ステータスに1を返して，コマンドを終了します。
- もし，`t`が60(s)以上になっても，投擲物の座標が地面より下にならなかった場合，終了ステータスに1を返して，コマンドを終了します。
- 重力加速度は9.806(m/s^2)で固定です。
- 着地判定を0.001(s)ごとに行う為，結果にはわずかながら誤差が生じます。着地速度が早すぎると，結果の誤差が大きくなります。

# 動作確認環境
Ubuntu 22.04.5 LTS
Python 3.13.5

# 権利関係
このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます。  
© 2026 Ibuki Haga
