# 自作OS用リポジトリ <br>
『ゼロからのOS自作入門』の写経から始めて、自身のオリジナルOSを作ることが目標。<br>
動作環境はシミュレータのQEMU、Panasonic社製のLaptopであるLet'snote CF-RZ5を使用する。<br>

現在は1周目の通読と実装が完了して、<br>
下図のように自作OS上で複数アプリの起動やテキストファイル、画像ファイルなどの表示に成功。<br>
今後、実装を考えているアイデア。<br>
・実機のCF-RZ5でQEMUと同様の内容が動作できるようにする(★現在取り組み中)<br>
・OS画面のデザイン変更(壁紙, カーソル, ウィンドウなど)<br>
・テトリスAppを作成する。 <br>
・起動画面を追加してOSっぽくする<br>
・コマンドにTab補完を追加する<br>

## OS画面<br>
QEMU, MikanOS<br>
<img src="https://user-images.githubusercontent.com/74296872/176450306-08a06869-ec79-4333-99cb-38f8183aaf2d.gif" width="700"><br>
Panasonic Laptop-PC (CF-RZ5)…取り組み中<br>
<img src="https://user-images.githubusercontent.com/74296872/177804955-b11e2853-9755-4466-82d9-fbe8b0c0cfde.png" width="700"><br>

## 開発環境<br>
//Version確認中 <br>
| Item | Version |
| ------------- | ------------- |
| HostPC  | CPU:Intel Core i7-9700KF, RAM: 32GB  |
| Cコンパイラ  | Clang  |
| リンカ  | LLVM  |
| エミュレータ  | QEMU  |
| OS動作確認用PC  | CF-RZ5 (Panasonic)  |

## 参考文献 <br>
『ゼロからのOS自作入門』<br>
OSを手作りしながらOSの仕組みを楽しく学べる。<br>
UEFIで起動するIntel64モードで動作して、USB3.0ドライバやマルチタスクなどにも対応したOSを段階的に手作りできる。<br>
http://zero.osdev.jp/　<br>
<img src="https://user-images.githubusercontent.com/74296872/173007556-5feaa90e-a987-4574-867c-3d0823655e1c.png" width="300">
