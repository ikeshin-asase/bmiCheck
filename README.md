# bmiCheck
bmiをチェックするWebページ

## プログラムの概要
servletを使った、身長と体重の入力でbmiを算出するWebブラウザで動作するプログラムです。

### プログラムの仕様条件
* 身長と体重を入力
* 入力された数値をもとにBIMを算出
* [肥満学会による分類](http://www.jasso.or.jp/data/magazine/pdf/chart_A.pdf)でいずれの肥満度に該当するか表示する
* 0以下や文字入力のエラーはいずれ対応するように修正予定

※参考
[日本肥満学会](http://www.jasso.or.jp/)

## 開発時状況
職業訓練授業で下記を学習し終えた時期に作成
* Javaのループ、ifやSwitch分岐、メソッド、クラス
* servletによるWebページ推移

## ファイル構成
* BmiServlet01.java(Model、Controller):表示ページと入力値計算を実施するservletファイル
* bmi_result.jsp(View):計算結果、BMI値をもとに一覧表を表示するファイル
* bmi.jsp(View):ユーザーに入力してもらうファイル

### ファイルリンク
[servletファイル](http://www.jasso.or.jp/](https://github.com/ikeshin-asase/bmiCheck/tree/main/src/main/java/bmicheck)

[jspファイル](https://github.com/ikeshin-asase/bmiCheck/tree/main/src/main/java/bmicheck)](https://github.com/ikeshin-asase/bmiCheck/tree/main/src/main/webapp/WEB-INF/bmicheck)

## プログラムプレビュー
https://user-images.githubusercontent.com/99540305/219031453-aec7ef99-7a6b-46d3-ab2e-ce5042d200b5.webm

## 将来的なメンテナンスや追加など
* bmiデータの分類をクラスファイルとして分離 
* 計算された値を小数点第2位ほどに四捨五入
* 0以下の数値入力でエラー表示
* 文字入力した際にエラー表示
* CSSファイルの分離
* Model、Controller部分の切り離し

## 更新履歴
* 2023-02-15　jspファイルのみで作成していたプログラムをservletを利用したファイル、構成に修正
* 2023-02-09　基本プログラムをアップロード
