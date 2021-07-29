# timeschedule2

## 0730修正

まさへ　<br>
・いらないコードは消していく癖をつけよう！
→コードは考えている中で決して良いかわからないことがあると思うけど、コメント・printに関してはいらないものは消して行こう！
毎回毎回たくさんのプリントがコンソールに得てしまって、自分でも見にくいと思うし、余計に時間がかかってしまうよ！

・インスタンスについてちょっと理解してみよう！
→説明します！


## 修正内容

・最初のViewControllerとpageViewControllerの間にいるviewControllerがいらない

・segue"toNextViewController"の遷移をpresent Modifyにする。
→画面が全画面だと、仕様的にNyuryokuVCのプラスボタンが消えてしまうので

・今、ストーリーボードを生成してやっていて、pageViewControllerの方が使われてない！
→prepareメソッドとperformSegueを使ってあげよう！

<br><br><br>

そもそも...
このアプリの仕様的に、PageViewControllerがベストではなかったかな〜
→今回は、NyuryokuVCとかのところを、present Modifyにして全画面じゃなくすることでplusボタンが消えちゃう問題を逃れてる！
