# 自作OS用リポジトリ <br>
『ゼロからのOS自作入門』の写経から始めて、自身のオリジナルOSを作ることが目標。<br>
動作環境はシミュレータのQEMU、Panasonic社製のLaptopであるLet'snote CF-RZ5を使用する。<br>

現在は1周目の通読と実装が完了して、<br>
下図のように自作OS上で複数アプリの起動やテキストファイル、画像ファイルなどの表示に成功。<br>
今後、実装を考えているアイデア。<br>
・実機のCF-RZ5でQEMUと同様の内容が動作できるようにする【完了】<br>
・OS画面のデザイン変更(壁紙, カーソル, ウィンドウなど)<br>
・テトリスAppを作成する。 <br>
・スプラッシュ画面を表示する<br>
・コマンドにTab補完を追加する<br>

## OS画面<br>
シミュレータ：QEMU, MikanOS<br>
<img src="https://user-images.githubusercontent.com/74296872/176450306-08a06869-ec79-4333-99cb-38f8183aaf2d.gif" width="700"><br>
実機：Panasonic Laptop-PC (CF-RZ5)<br>
<img src="https://user-images.githubusercontent.com/74296872/202130883-5f03d99c-d80a-4e6c-9c09-3630e121a25a.png" width="700"><br>

## 開発環境<br>
| Item | Version |
| ------------- | ------------- |
| HostPC  | CPU:Intel Core i7-9700KF, RAM: 32GB  |
| Cコンパイラ  | Clang 7.0.0  |
| リンカ  | LLVM Linker(LLD) 7.0.0  |
| エミュレータ  | QEMU 2.11.1  |
| 動作確認用PC  | CF-RZ5 (Panasonic)  |

## 参考文献 <br>
[『ゼロからのOS自作入門』](http://zero.osdev.jp/)<br>
OSを手作りしながらOSの仕組みを楽しく学べる。<br>
UEFIで起動するIntel64モードで動作して、USB3.0ドライバやマルチタスクなどにも対応したOSを段階的に手作りできる。<br>
<img src="https://user-images.githubusercontent.com/74296872/173007556-5feaa90e-a987-4574-867c-3d0823655e1c.png" width="300">
