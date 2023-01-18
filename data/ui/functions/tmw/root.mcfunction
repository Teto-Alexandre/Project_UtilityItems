#> ui:tmw/root
#
# 全てのマジックアイテムの「基本動作」を司るエンジン
#
# 「新規アイテム作成時」はここに「追記」すること
#
# @public

# ユニークアイテムの装備時の諸々の能力
    #ティルフィング
        execute if entity @a[scores={ui_tmw_id=1}] run function ui:tmw/1/lim
    #アニマ
        execute if entity @a[scores={ui_tmw_id=2}] run function ui:tmw/2/lim
    #フランベルジュ
        execute if entity @a[scores={ui_tmw_id=3}] run function ui:tmw/3/lim
    #ジャスティス
        execute if entity @a[scores={ui_tmw_id=4}] run function ui:tmw/4/lim
    #トルニクス
        execute if entity @a[scores={ui_tmw_id=5}] run function ui:tmw/5/lim
    #ウィンディア
        execute if entity @a[scores={ui_tmw_id=6}] run function ui:tmw/6/lim
    #量産型トルニクス
        execute if entity @a[scores={ui_tmw_id=7}] run function ui:tmw/7/lim
    #仕込み道具（斧・ツルハシ・シャベル）
        execute if entity @a[scores={ui_tmw_id=8}] run function ui:tmw/8/lim
    #アルファエッジ（魔剣全種のいいとこどり・・・？）
        execute if entity @a[scores={ui_tmw_id=9}] run function ui:tmw/9/lim
    #トルニクスアンカー
        execute if entity @a[scores={ui_tmw_id=10}] run function ui:tmw/10/lim
    #ポーションランチャー
        execute if entity @a[scores={ui_tmw_id=11}] run function ui:tmw/11/lim
        execute if entity @a[scores={ui_tmw_id2=11}] run function ui:tmw/11/lim
    #即席龍素注入ボトル
        execute if entity @a[scores={ui_tmw_id=12}] run function ui:tmw/12/lim
    #カラドボルグ
        execute if entity @a[scores={ui_tmw_id=13}] run function ui:tmw/13/lim
    #デモンズストライク
        execute if entity @a[scores={ui_tmw_id=14}] run function ui:tmw/14/lim
    #ファイアロッド
        execute if entity @a[scores={ui_tmw_id=15}] run function ui:tmw/15/lim
    #暁の翼
        execute if entity @a[scores={ui_tmw_id=101}] run function ui:tmw/101/lim
    #凍て付いた博愛
        execute if entity @a[scores={ui_tmw_id=102}] run function ui:tmw/102/lim
    #一括破壊ツール ツルハシ・斧・シャベル
        execute if entity @a[scores={ui_tmw_id=201}] run function ui:tmw/201/lim
        execute if entity @a[scores={ui_tmw_id=202}] run function ui:tmw/202/lim
        execute if entity @a[scores={ui_tmw_id=203}] run function ui:tmw/203/lim
    #豊穣の鎌
        execute if entity @a[scores={ui_tmw_id=204}] run function ui:tmw/204/lim
    #チェストクラッシャー
        execute if entity @a[scores={ui_tmw_id=205}] run function ui:tmw/205/lim
    #一括破壊クワ
        execute if entity @a[scores={ui_tmw_id=206}] run function ui:tmw/206/lim
    #強化弓
        execute if entity @a[scores={ui_tmw_id=207}] run function ui:tmw/207/lim
    #加護シリーズ第二弾（オフハンド装備）
        execute if entity @a[scores={ui_tmw_id2=208}] run function ui:tmw/208/lim
        execute if entity @a[scores={ui_tmw_id2=209}] run function ui:tmw/209/lim
        execute if entity @a[scores={ui_tmw_id2=210}] run function ui:tmw/210/lim
        execute if entity @a[scores={ui_tmw_id2=211}] run function ui:tmw/211/lim
        execute if entity @a[scores={ui_tmw_id2=212}] run function ui:tmw/212/lim
        execute if entity @a[scores={ui_tmw_id2=213}] run function ui:tmw/213/lim
        execute if entity @a[scores={ui_tmw_id2=214}] run function ui:tmw/214/lim
        execute if entity @a[scores={ui_tmw_id2=215}] run function ui:tmw/215/lim
        execute if entity @a[scores={ui_tmw_id2=216}] run function ui:tmw/216/lim
        execute if entity @a[scores={ui_tmw_id2=217}] run function ui:tmw/217/lim
    #マキナフィッシャー
        execute if entity @a[scores={ui_tmw_id=218}] run function ui:tmw/218/lim
    #天銀掘りのツルハシ
        execute if entity @a[scores={ui_tmw_id=219}] run function ui:tmw/219/lim
    #広域回収器
        execute if entity @a[scores={ui_tmw_id=220}] run function ui:tmw/220/lim
    #魔王ドリンク
        execute if entity @a[scores={ui_tmw_id=221}] run function ui:tmw/221/lim
    #エンクロージャー
        execute if entity @a[scores={ui_tmw_id=222}] run function ui:tmw/222/lim
    #アカシックレコード
        execute if entity @a[scores={ui_tmw_id=223}] run function ui:tmw/223/lim
    #松明砲
        execute if entity @a[scores={ui_tmw_id=224}] run function ui:tmw/224/lim
    #オートリローダー
        execute if entity @a[scores={ui_tmw_id=225}] run function ui:tmw/225/lim
    #ストレージボックス
        execute if entity @a[scores={ui_tmw_id=226}] run function ui:tmw/226/lim
    #経験値バンク
        execute if entity @a[scores={ui_tmw_id=227}] run function ui:tmw/227/lim
    #スカルファイアソード
        #228
    #レシピ識別用id
        #229
    #被実在性クレヨン
        execute if entity @a[scores={ui_tmw_id=230}] run function ui:tmw/230/lim
    #エレベーターワンド
        execute if entity @a[scores={ui_tmw_id=231}] run function ui:tmw/231/lim
    #霊体の視察
        execute if entity @a[scores={ui_tmw_id=232}] run function ui:tmw/232/lim
    #トリックショット
        execute if entity @a[scores={ui_tmw_id=233}] run function ui:tmw/233/lim
    #ラ・イリアス
        execute if entity @a[scores={ui_tmw_id=234}] run function ui:tmw/234/lim
    #ネオンガン
        execute if entity @a[scores={ui_tmw_id=235}] run function ui:tmw/235/lim
        execute if entity @a[scores={ui_tmw_id2=235}] run function ui:tmw/235/oh/lim
    #ネオングレネード
        execute if entity @a[scores={ui_tmw_id_old=236}] run function ui:tmw/236/lim
        execute if entity @a[scores={ui_tmw_id_old2=236}] run function ui:tmw/236/oh/lim
    #ペイントガン
        execute if entity @a[scores={ui_tmw_id=237}] run function ui:tmw/237/lim
    #EZBridge
        execute if entity @a[scores={ui_tmw_id=239}] run function ui:tmw/239/lim
    #スキルツリーコア
        execute if entity @a[scores={ui_tmw_id=240}] run function ui:tmw/240/lim
    #大鎌
        execute if entity @a[scores={ui_tmw_id=241}] run function ui:tmw/241/lim
    #ゆるふわミサイル
        execute if entity @a[scores={ui_tmw_id=242}] run function ui:tmw/242/lim
    #エンダーコア
        execute if entity @a[scores={ui_tmw_id=243}] run function ui:tmw/243/lim
    #センサーボウ
        execute if entity @a[scores={ui_tmw_id=244}] run function ui:tmw/244/lim
    #ドラゴンウォッチャー
        execute if entity @a[scores={ui_tmw_id=245}] run function ui:tmw/245/lim
    #ダンジョンメーカー
        #246
    #ミサイルディテクター
        execute if entity @a[scores={ui_tmw_id=247}] run function ui:tmw/247/lim
    #IDチェッカー
        execute if entity @a[scores={ui_tmw_id=248}] run function ui:tmw/248/lim
    #競技用ミサイルカウンター
        execute if entity @a[scores={ui_tmw_id2=249}] run function ui:tmw/249/lim
    #マインスイーパー
        execute if entity @a[scores={ui_tmw_id=250}] run function ui:tmw/250/lim
    #マップエディター
        execute if entity @a[scores={ui_tmw_id=251}] run function ui:tmw/251/lim
    #ズーキーパー
        execute if entity @a[scores={ui_tmw_id=252}] run function ui:tmw/252/lim
    #きぐるみシリーズ
        execute if entity @a[scores={ui_tmw_id=253}] run function ui:tmw/253/lim
    #村人コンバーター
        execute if entity @a[scores={ui_tmw_id=254}] run function ui:tmw/254/lim
    #質量銃器
        execute if entity @a[scores={ui_tmw_id=255}] run function ui:tmw/255/lim
        execute if entity @a[scores={ui_tmw_id2=255}] run function ui:tmw/255/lim_oh
    #バランスぶっ飛んだカラクラ
        execute if entity @a[scores={ui_tmw_id=256}] run function ui:tmw/256/lim
    #黒穹の剣
        execute if entity @a[scores={ui_tmw_id=257}] run function ui:tmw/257/lim
    #鎖
        execute if entity @a[scores={ui_tmw_id=258}] run function ui:tmw/258/lim
    #スキルツリーメーカー
        execute if entity @a[scores={ui_tmw_id=259}] run function ui:tmw/259/lim
    #モードチェンジャー
        execute if entity @a[scores={ui_tmw_id=260}] run function ui:tmw/260/lim
    #自動松明
        execute if entity @a[scores={ui_tmw_id2=261}] run function ui:tmw/261/lim
    #雪玉
        execute if entity @a[scores={ui_tmw_id=262}] run function ui:tmw/262/lim
        execute if entity @a[scores={ui_tmw_id2=262}] run function ui:tmw/262/lim
    #レッドレーザー
        execute if entity @a[scores={ui_tmw_id=263}] run function ui:tmw/263/lim
    #モードチェンジ:rob
        execute if entity @a[scores={ui_tmw_id=264}] run function ui:tmw/264/lim
    #チェーンリンクメーカー
        execute if entity @a[scores={ui_tmw_id=301}] run function ui:tmw/301/lim
    #エーテリウムシューター
        execute if entity @a[scores={ui_tmw_id=302}] run function ui:tmw/302/lim
    #エネルギーカートリッジ
        execute if entity @a[scores={ui_tmw_id=303}] run function ui:tmw/303/lim
    #空洞探知機
        execute if entity @a[scores={ui_tmw_id=304}] run function ui:tmw/304/lim
    #銃器
        execute if entity @a[scores={ui_tmw_id=305}] run function ui:tmw/305/lim
    #マガジン
        execute if entity @a[scores={ui_tmw_id=306}] run function ui:tmw/306/lim
    #血液回収器
        execute if entity @a[scores={ui_tmw_id2=307}] run function ui:tmw/307/lim
    #生贄の短剣
        execute if entity @a[scores={ui_tmw_id=308}] run function ui:tmw/308/lim
    #血の金庫
        execute if entity @a[scores={ui_tmw_id=309}] run function ui:tmw/309/lim
    #契約書
        execute if entity @a[scores={ui_tmw_id=501}] run function ui:tmw/501/lim
    #カード
        execute if entity @a[scores={ui_tmw_id=521}] run function ui:tmw/521/lim
    #装備コア
        execute if entity @a[scores={ui_tmw_id=601}] run function ui:tmw/601/lim