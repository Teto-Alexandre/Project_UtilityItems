このデータパックは多数のコマンドアイテムとその作成レシピ、その他雑多な色々を追加するデータパックです。

MinecraftJavaEdition 1.16.1 にて制作を開始し、1.17.1 での動作するようにリメイクしたものです。
（当然win10版やスマホ版では動作しませんよ！）

レシピが分からないのが面倒？わざわざガチャ回して手に入れたくない？
リソースパックの「assets\ui\textures\font」の中に全てのレシピの画像がありますよ！
何が出来上がるかは描いてませんけどね...

※ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー※

不具合やバグがあるかもしれませんので注意書きをよく読んだ上で、ワールドのバックアップを取るようにしましょう

※ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー※

導入方法

	zipファイルは解凍しなくても問題ありません。
	・「Project_UtilityItems」を.minecraft\saves\ワールド名\datpacksの中に入れてください。
	・「ui_resources」をリソースパックとして導入してください　既存テクスチャの書き換えはありません

	ワールド生成時に予め導入する場合は生成画面の「データパック」をクリックした後に「Project_UtilityItems」を
	　画面にドラッグアンドドロップした後、「利用可能」から「選択中」に移動させてください
	　（「利用可能」のままでもゲーム内で/datapackコマンドで有効化することは可能ですが）


アイテムのレシピ

	基本的にルートチェストの中に入っています
	一部のレシピは最初から進捗で参照できます
	ただしレシピ画像の参照にはリソースパックの導入が必要です
	

ゲーム内での動作

	データパックを導入するとルートチェストの内容物にアイテムレシピが追加されます

	「/function ui:misc/itemgive1」と入力するとアイテムが入手できます。
	　この操作は「/function ui:misc/itemgive11」まで存在します
	　一括ですべて入手は出来ません（インベントリの枠的な話ですが）

	予想外のバグ（レシピ通りにアイテムを作成したのに何も作れなかった）などの場合は、
	　「/function ui:misc/craft_glitch」と入力すると解決する場合があります

	「/function ui:misc/advancements_revoke」と入力すると全進捗がリセットされます

	「/function ui:misc/inst」と入力すると初回ログインボーナスを再取得できます

	対応したアイテムのコマンドのみを逐一実行しているのでよほど大人数でない限り負荷はないと思われます
	　ですが機械類は大量に置くとラグの原因となります

	一部アイテムの効果において通常プレイで破壊不可能なブロックの消滅やゲームルールの変更が起きる可能性があります
	　仕様です

	ディメンションが１つ増えます

	プレイヤーが死んだときに骨を落とします


利用について

	動画や生放送などでの利用は自由です。報告頂ければ喜んで見に行きます。
	技術の転用は問題ありません。
	二次配布や自作発言はおやめください。ダウンロードURLの直貼りも禁止です。
	違反した場合、配布停止などの措置を講じる場合があります。
	紹介などの場合はついでに動画URLなどを貼ってもらえるととても喜びます。

	Optifineでの動作はバージョン1.17.1においてOptifine_HD_U_G9で確認しています。
	forgeでの動作は確認しておりませんのであしからず。
	fabric単体でも動作は確認しています、不具合が発生したならMODの影響でしょう。
	マルチプレイの場合spigot、paperでの動作は未確認、公式サーバーの使用を推奨します。


よくある質問

	Q：導入したけど何も起きない・特に変化がない！
	A：おそらくデータパックが起動していません。/datapack enableで起動するか、
	 　起動する設定にした上でワールドを再度作成してください。

	Q：レシピどこにあるの？
	A：Lキーで進捗を開きましょう　そこにないレシピはダンジョンチェスト等から見つけることができます
	 　手っ取り早く全部見たいならリソースパックのui:textures/fontの中を見ましょう

	Q：このデータパックの進め方とかない？
	A：最近進捗機能が増えてきました　表示される進捗をクリアしていきましょう
	   魔剣アニマは減った最大HPを回復できるので最初に作ることをオススメします
	 　移動手段に困ったら（トルニクス/ウィンディア/カラドボルグ/エンダーアロー）を作ってみましょう
	   ネザースターを手に入れたら黄色い本のレシピ（エンドコンテンツ）が作成できます

	Q：バグった
	A：報告していただけるとデバッグが進みます

	Q：宣伝/実況していいの？
	A：宣伝はご自由にどうぞ　実況するなら動画リンクとか張ってくれると助かります
	 　コメント欄かTwitterあたりにコンタクトを取ってもらえれば私個人は喜んで見に行きます

	
既知の不具合：

	工業機械で完成品スロットに表示される実体のないアイテムをクラフトに使用できる
	スペクテイター状態でも攻撃を受ける、死亡すると戻れなくなる　等
	血の金庫が全面的に動作が不安定な気がします　大事なものは入れないように


不具合などの報告は動画のコメント欄に乗せておいていただければいつか確認します。（たぶん）