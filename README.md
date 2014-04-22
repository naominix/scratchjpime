scratchjpime
============
PEG-programming education gatheringプロジェクトの公式SDカード内のScratchを日本語入力に対応させるためのシェルスクリプトです。
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

強制的に上書きする場合はowsetupscratchjpime.shを使用します。

MacにMacFUSEをインストール済みでSDカードをmountできる場合はmacfuse_ow_setup_scratch_jp_ime.shを利用すればRaspberry Piを起動することなく日本語入力対応が行えます。大幅な時間短縮をお望みの場合はこちらを推奨します（一瞬で終わります）。

動作は未確認ですが、当然のことながらext4パーティションをmountできるLinux環境でも実行可能です。

Raspbianを直接インストールしたSDカードでボリューム名がUntitledのものはmacfuse_raspbian_ow_setup_scratch_jp_ime.shを利用します。ボリューム名が異なっている場合は適宜スクリプトを書き換えてから実行してください。

