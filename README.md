# robosys2022
『ロボットシステム学』で使用しているリポジトリ

![test](https://github.com/MiyawakiKaito/robosys2022/actions/workflows/test.yml/badge.svg)

# ダウンロード方法
* http
```
https://github.com/MiyawakiKaito/robosys2022.git
```
---

# コマンド
標準入力から読み込んだ数字を扱う

今回の動作確認で使用するコマンド

* seq 数 
  * 1から指定した数までを連続して出力する


## plusコマンド
標準入力から読み込んだ数字を足し、算出された値を出力する

* 動作確認の例
```
seq 5 | ./plus
```
実行結果
```
15
```

## multiplyコマンド
標準入力から読み込んだ数字をかけ、算出された値を出力する

* 動作確認の例
```
seq 5 | ./multiply
```
実行結果
```
120
```

---

# 必要なソフトウェア・動作確認
* Python
  * Python3.7～3.10で動作確認済み
* Ubuntu
  * Ubuntu20.04で動作確認済み

---

# 著作権・ライセンス
  * このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
* このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
  * [ryuichiueda/my_slides robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)

© 2022 Miyawaki Kaito

   
