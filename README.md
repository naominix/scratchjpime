scratchjpime
============
PEG-programming educationg gatheringプロジェクトの公式SDカード内のScratchを日本語入力に対応させるためのシェルスクリプトです。
手作業でやると面倒なので単純に手続きを書いただけの単純なものです。

使い方
-----
１．以下のリンクからscratchjpime.tar.gzをダウンロードします。
http://goo.gl/jzFP9J
２．上記ファイルをUSBメモリに入れます（展開しません）。
３．Raspberry PiをSDカードからブートします。
４．２のUSBメモリをRaspberry Piに接続します。
５．/home/piに上記ファイルをコピーします。
６．tar zxvf scratchjpime.tar.gz で展開します。
７．cd scratchjpime
８．sudo ./setupscratchjpime.sh
９．日本語入力できるか確認します。

注意点
-----
NanoBoardAG用のスクリプトは通常のScratch起動とは異なるため、念のため個別に確認を行ってください。
