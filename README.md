[![test](https://github.com/peanutnuts/Throwing-Distance-Calculator/actions/workflows/test.yml/badge.svg)](https://github.com/peanutnuts/Throwing-Distance-Calculator/actions/workflows/test.yml)

# throwdis() コマンド
throwdis コマンドを提供します。
物を投げたときの
- 投げた初速度
- 投げた角度
- 投げた高さ

から，重力加速度0.906 m/s^2 においての

- 到達する水平距離
- 落下する時間
- 落下したときの進行角度

を出力します.

## リポジトリの入手
リポジトリを保存したいディレクトリにて，
'''
$ git clone https://github.com/peanutnuts/Throwing-Distance-Calculator  
'''
と入力してください。

## 使い方
	$ cd Throwing-Distance-Calculator
	$ ./throwdis <投げた初速度(m/s)> <投げた角度(deg)> <投げた高さ(h)>

とそれぞれ半角英数字で値を代入して入力してください。
入力された値から計算を行い，以下を出力し，コマンドを終了します。

	<到達距離(m)>
	<落下時間(s)>
	<落下時の進行角度(deg)>

例えば 初速度10(m/s), 投げた角度45(deg), 投げた高さ1(m) の場合，

	$ ./throwdis 10 45 1

と入力すると

	11.116
	1.572
	-49.720 

と出力されます。

# 注意点
- 投げた角度の入力について，水平方向を角度0°とし、上向きの角度を正、下向きの角度を負とする。
- 投げた高さの入力について，０より小さい値を入力すると，終了ステータスに1を返して，コマンドを終了します。
- もし，60s 以上になっても，投擲物の座標が地面より下にならなかった場合，終了ステータスに1を返して，コマンドを終了します。
- 重力加速度は9.806 m/s^2 で固定です。
- 衝突判定を0.001(s)ごとに行う為，結果にはわずかながら誤差が生じます。着地速度が早すぎると，結果の誤差が大きくなります。

# 動作確認環境
Ubuntu 22.04.5 LTS
Python 3.13.5

# 権利関係
このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます。
© 2026 Ibuki Hag
