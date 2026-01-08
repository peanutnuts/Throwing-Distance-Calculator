# throwdis
[![test](https://github.com/peanutnuts/Throwing-Distance-Calculator/actions/workflows/test.yml/badge.svg)](https://github.com/peanutnuts/Throwing-Distance-Calculator/actions/workflows/test.yml)

## コマンド説明
入力に応じて，物を投げた際の挙動を計算し出力します。

入力は，物を投げた際の
- `v0`		初速度(m/s)
- `throw_deg`	発射角度(deg)
- `h`		初期高さ(m)

出力は，水平な地面，重力加速度9.806(m/s^2)における，
- `x`		到達する水平距離(m)
- `t`		着地する時間(s)
- `v`		着地時の速度(m/s)
- `landing_deg`	着地時の進行角度(deg)

---
## 使い方

まず入力に使う任意のファイル(以下`input_file.txt`)を用意します。

- `v0`          初速度(m/s)
- `throw_deg`   発射角度(deg)
- `h`           初期高さ(m)
  
これら3つの値を3行，または空白区切りで以下のように入力してください。

**input_file.txt**
```input_file.txt
v0
throw_deg
h
```

ファイルを用意したら，コマンドを起動します。半角英数字で以下を入力してください。

**bash**
```bash
$ cd Throwing-Distance-Calculator
$ ./throwdis < input_file.txt
```

このコマンドは，  
`throwdis`と`input_file.txt` が現在のディレクトリに存在する場合です。  
`input_file.txt`が別のディレクトリにある場合，パスを明示的に指定してください。

入力された`input_file.txt`から計算を行い，

- `x`		到達する水平距離(m)
- `t`		着地する時間(s)
- `v`		着地時の速度(m/s)
- `landing_deg`	着地時の進行角度(deg)

これらを以下のように出力します。

**bash**
```bash
x
t
v
landing_deg
```

---
## 例
例えば`v0 = 10`，`throw_deg = 45`，`h = 1`，としたい場合は，
`input_file.txt`は以下のようになります。

**input_file.txt**
```input_file.txt
10
45
1
```

コマンドを起動すると
以下のように出力します。

**bash**
```bash
11.116
1.572
10.937
-49.720
```

---
## 注意点
- 発射角度`throw_deg`，着地時の進行角度`landing_deg`，の入力について，  水平方向を角度0°とし、上向きの角度を正、下向きの角度を負としてください。

- 投げた高さ`h`の入力について，０より小さい値を入力すると，終了ステータスに1を返して，コマンドを終了します。

- もし，`t`が60(s)以上になっても，投擲物の座標が地面より下にならなかった場合，終了ステータスに1を返して，コマンドを終了します。

- 重力加速度は9.806(m/s^2)で固定です。

- 着地判定を0.001(s)ごとに行う為，結果にはわずかながら誤差が生じます。着地速度が早すぎると，結果の誤差が大きくなります。

## 動作確認環境
- Ubuntu 22.04.5 LTS
- Python 3.13.5

## 権利関係
このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます。  
© 2026 Ibuki Haga
