# 説明書き

#kill @e[type=!player]

    ## テトのレポート

##        分割処理してるおかげで大量にアイテムが追加されてもそこまで重くはならない
##        プレイヤーの一挙手一投足を毎tick監視してることを除けば軽いデータパック
##        オーバーワールドの0,0,0地点を使用中  todo>他のディメンションに隔離

    ## 使用中のポーションエフェクト:   幸運Lv2~24

###       Lv 2 着弾地点またはエフェクトの保持者またはAECに雷を落とす
###           アイテム名: 雷矢 招雷のポーション
###       Lv 3 着弾地点またはエフェクトの保持者に花火を爆発させる
###           アイテム名: 花火の矢
###       Lv 4 エフェクトの保持者に15秒間の浮遊Lv129と鈍足Lv1を与える 二発目が当たるとバグによって吹っ飛ぶ（仕様）
###           アイテム名: 超重力の矢
###       Lv 5 エフェクトの保持者に5秒間の空腹Lv124を与える
###           アイテム名: 暴食の矢
###       Lv 6 付与された矢のPowerが5.5になる
###           アイテム名: 滅撃の矢
###       Lv 7 クロスボウで射撃すると直後に三本の矢が装填されたクロスボウに置換される
###           アイテム名: ストームブリンガー
###       Lv 8 エフェクトの保持者のui_hpを10加算する（最大値の半分）
###           アイテム名: ティルフィング
###       Lv 9 付与された矢が燃える
###           アイテム名: 火矢
###       Lv 10 付与された矢のPierceLevelが99になりプレイヤーや盾を貫通し反射されない
###           アイテム名: ダークプリズム
###       Lv 11 エフェクトの保持者のui_hpを0にし、10秒間の再生Lv1を与える
###           アイテム名: 魂再生薬
###       Lv 12 AECの場合爆発する
###           アイテム名: 爆塵のポーション
###       Lv 13 AECの場合付近に10秒間の鈍足Lv5と跳躍力上昇Lv129を与える
###           アイテム名: 氷結のポーション
###       Lv 14 吹き飛ぶ
###           アイテム名: 衝撃のポーション
###       Lv 15 付与された矢のモーションがコピーされたTNTに変化する
###           アイテム名: TNTの矢
###       Lv 16 着弾地点にファイボが落ちる
###           アイテム名: 隕石の矢
###       Lv 17 射撃者をスペクテイター化して矢の着弾点まで移動させる
###           アイテム名: エンダーアロー
###       Lv 18 エフェクトの保持者のui_hpを2減少させ、1秒間の再生Lv1を与える
###           アイテム名: 魂回復薬
###       Lv 19 着弾地点またはエフェクトの保持者周辺を"ストラクチャー名:sphere15"で消し去る
###           アイテム名: （なし）
###       Lv 20 着弾地点またはエフェクトの保持者周辺を"ストラクチャー名:sphere23"で消し去る
###           アイテム名: （なし）
###       Lv 21 着弾地点またはエフェクトの保持者周辺を"ストラクチャー名:sphere31"で消し去る
###           アイテム名: （なし）
###       Lv 22 空中で弾ける
###           アイテム名: 彗星の矢
###       Lv 23 接地していないエンティティが12m以内にいた場合Rad16の爆発を起こす
###           アイテム名: 対空近接信管の矢
###       Lv 24 着弾地点またはエフェクトの保持者周辺を"ストラクチャーリンク:sphere63"で消し去る
###           アイテム名: （なし）
###       Lv 25 AECの場合負の経験値オーブを生成する
###           アイテム名: アンチ経験値のポーション
###       Lv 26 ポーション効果としてTDS:fireのスタックを取り除き10秒間処理対象から外れる
###           アイテム名: 耐炎のポーション
###       Lv 27 ポーション効果としてTDS:coldのスタックを取り除き10秒間処理対象から外れる
###           アイテム名: 耐氷のポーション
###       Lv 28 ポーション効果としてTDS:amethystのスタックを150000得る(15ダメージ分の免疫)
###           アイテム名: 耐紫のポーション

    ## 使用中のui_Nタグ:  1~11

###       1: インスタントブロック
###       2: ラピュタエディター
###       3: インスタントタワー
###       4: インスタントピラー
###       5: ノヴァかまど
###       6: スカイブロックメーカー
###       7: 大きな石の塊
###       8: 環境レーダー
###       9: 環境レーダー2nd
###       10: インスタントエンドポータル
###       11: インスタントパッカー

    ##   使用中のカスタムモデルデータ:

###       110001~: 人参棒
###       120001~: GUIスロット用の薄灰色のステンドガラス版
###       130001~: ブロック用のストレイのスポーンエッグ
###       131001~: 消費アイテム用のスポーンエッグ
###       150001~: 本のアイテム
###       160001~: 釣り竿
###       170001~: クッキー
###       210001~: 進捗の背景とアイコン
###       211001~: 鉄インゴット
###       212001~: 鉄ナゲット
###       213001~: 銅インゴット
###       214001~: ツルハシ
###           素材内訳: 214001~
###               214001~: 木
###               214101~: 石
###               214201~: 鉄
###               214301~: ダイヤ
###               214401~: 金
###       215001~: 金インゴット
###       216001~: アメジストの欠片
###       217001~: 雪玉

    ##   TetoMythicWeapon使用ID:

###       1~100: 魔法武器シリーズ
###       101~200: 神器
###       201~300: 便利系魔道具
###       301~400: ツール
###       401~500: 食べ物
###       501~520: 契約書
###       521~540: カード
###       1001~2000: 素材アイテム
###           素材内訳: 1001~
###               1001: 染み込んだ土壌/石
###               1002: 染み込んだ水入りバケツ
###               1003: エーテリウムの欠片
###               1004: エーテリウムの塊
###               1005: エーテリウムの剣
###               1006: アナザー合金
###               1007: 伝導合金
###               1008: 鉄のメカニカルパーツ
###               1009: 銅のメカニカルパーツ
###               1010: 天銀の小片
###               1011: 天銀インゴット
###               1012: 蒼天銀インゴット
###               1013: 金の糸
###               1014: 金のメカニカルパーツ
###               1015: 精製アメジスト

    ##   attributeのUUID使用:

###      0-0-0-0-0 （最大HP減少）
###      0-0-0-0-1 （NoKB_temp）
###      1-0-0-0-0から1-0-0-0-11 （生命の実）

###      2,1,1,1から2,1,1,N （スキルツリー）
###      2,2,1,1            （武器）

    ##   レシピによるCraft経験値獲得:

###      Tier 1 : 1
###      Tier 2 : 20
###      Tier 3 : 300
###      Tier 4 : 2500
###      Tier 5 : 100000
###      進捗 : 100

# tickの最初にやること

    #鯖から抜けてた人対策
        execute as @a[scores={ui_lg=1..}] run function ui:misc/leave_game
    #メニューキル
        kill @e[type=item,nbt={Item:{tag:{ui:{ismenu:1}}}}]
    #タグが付いてる人の周囲の特定アイテムをキル
        execute as @e[tag=ui_unlock] at @s run function ui:misc/craft
    #汎用浮遊リセット
        execute as @e[tag=ui_kb] run function ui:misc/levitation
    #モーションスライムキル
        execute if score $motionslime ui_world matches 1 run function ui:misc/kill_slime

# スキル用操作検知システム

    ## 各操作の検知
        execute as @a run scoreboard players operation @s ui_ddn += @s ui_dda
        execute as @a run scoreboard players operation @s ui_ddn += @s ui_ddr
        execute as @a[scores={ui_ddn=1..}] at @s run tag @s add tmw_use
        execute as @a[scores={ui_use1=1..}] run function ui:misc/act/use
        execute as @a[scores={ui_di=1..},tag=!tmw_mh_calc,nbt=!{SelectedItem:{}}] at @s run function ui:misc/act/drop
        execute as @a[tag=tmw_oh_calc,nbt={Inventory:[{Slot:-106b}]},nbt=!{SelectedItem:{}}] run function ui:misc/act/offhand

    ## 所持アイテムid確認+装填確認
        execute as @a store result score @s ui_tmw_id run data get entity @s SelectedItem.tag.tmw.id
        execute as @a store result score @s ui_tmw_id2 run data get entity @s Inventory.[{Slot:-106b}].tag.tmw.id
        execute as @a store result score @s ui_slotable run data get entity @s SelectedItem.tag.tmw.slotable

    ## 操作要件確認用
        #execute as @a[tag=tmw_use] run say 攻撃時能力発動!
        #execute as @a[tag=tmw_drop_n] run say Qキー能力発動!
        #execute as @a[tag=tmw_drop_s,scores={ui_st2=..99}] run say チャージせずにShift+Q能力発動!
        #execute as @a[tag=tmw_drop_s,scores={ui_st2=100..}] run say 5秒以上チャージしてShift+Q能力発動!
        #execute as @a[tag=tmw_oh_n] run say Fキー能力発動!
        #execute as @a[tag=tmw_oh_s,scores={ui_st2=..99}] run say チャージせずにShift+F能力発動!
        #execute as @a[tag=tmw_oh_s,scores={ui_st2=100..}] run say 5秒以上チャージしてShift+F能力発動!
        #execute as @a[scores={ui_st=0,ui_use1=1..}] run say 右クリック能力発動!
        #execute as @a[scores={ui_st=1..,ui_st2=..99,ui_use1=1..}] run say チャージせずにShift+右クリック能力発動!
        #execute as @a[scores={ui_st=1..,ui_st2=100..,ui_use1=1..}] run say 5秒以上チャージしてShift+右クリック能力発動!

# メインアクションはすべてここに置く

    ## 誰か一人でも持ってる人がいないなら起動すらしない
        scoreboard players set $tmw.act ui_world 0
        execute if entity @a[scores={ui_tmw_id=1..}] run scoreboard players set $tmw.act ui_world 1
        execute if entity @a[scores={ui_tmw_id2=1..}] run scoreboard players set $tmw.act ui_world 1
        execute if entity @a[scores={ui_tmw_id_old=1..}] run scoreboard players set $tmw.act ui_world 1
        execute if entity @a[scores={ui_tmw_id_old2=1..}] run scoreboard players set $tmw.act ui_world 1
        execute if score $tmw.act ui_world matches 1 run function ui:tmw/root

    ## ｲｴｰｲ内部スロット持ってる～？
        execute if entity @a[scores={ui_slotable=1..}] run function ui:tmw/slot_root

    ## 起動スキルの存在しないユニークアイテム
        execute as @a[scores={ui_uset=1..}] run function ui:tmw/-1_-2
        tag @a[tag=dt] remove dt
        tag @a[nbt={Inventory:[{Slot:-106b,tag:{tmw:{id:-2}}}]}] add dt
        execute as @a[scores={ui_dr=1..}] run function ui:tmw/-3

    ## 条件別ポーション効果の置き換え
        execute as @e[tag=!ui_powered,type=arrow] run function ui:potion/arrow_set
        execute as @e[tag=ui_arrow_T,type=arrow] run function ui:potion/arrow_tick
        execute as @e[tag=!ui_groundd,type=arrow,nbt={inGround:1b}] run function ui:potion/arrow_hit
        execute as @e[nbt={ActiveEffects:[{Id:26b}]}] run function ui:potion/pot
        execute as @e[type=area_effect_cloud,nbt={Age:10,Effects:[{Id:26b}]}] run function ui:potion/aec

    ## スポーンエッグ型アイテムと付随性能
        execute if entity @e[type=bat,nbt={NoAI:1b}] run function ui:misc/egg_root
        #工業ブロック全て
        execute if entity @e[tag=ui_i] run function ui:industry/lim

    ## 食べ物型アイテム
        execute as @a[scores={ui_cookie=1..}] run function ui:food/cookie

    ## ディメンション
        execute as @a[nbt={Dimension:"ui:dream"}] at @s run function ui:dimension/dream/main

    ## スキルツリー
        execute if score $skilltree ui_world matches 1 run function ui:skilltree/main
    
    ## コモンイベント
        execute as @e[tag=ui_proj_common] at @s run function ui:common/projectile/tick
        execute as @e[tag=ui_c_ref] at @s run function ui:tmw/214/refmain

    ## 死んだことを検知
        ### 死んだ直後に実行するコマンド群
            execute as @a[scores={ui_dc=1..}] run function ui:misc/dead
        ### リスポーン直後に実行するコマンド群
            execute as @e[type=player,scores={ui_dc_r=1..}] run function ui:misc/respawned

# 特殊処理

    ## 恒常能力値操作(旧HP最大値操作)

        ### クリエならHPを最大に戻す
            scoreboard players set @a[gamemode=creative] ui_hp 0

        ### 能力値いろいろいじる
            function ui:misc/permanent_effect

    ## 魔導障壁

        ### 障壁アリなら耐性を付ける
            execute as @a[scores={ui_dhp=1..}] run function ui:misc/dhp
        ### 障壁ナシになったら耐性を消す
            effect clear @a[scores={ui_dhp=..0},nbt={ActiveEffects:[{Id:11b,Amplifier:4b,Duration:19}]}] minecraft:resistance

# 一秒おきに実行するコマンドのカウント
    scoreboard players add $world ui_tc 1
    execute if score $world ui_tc matches 21.. run function ui:1sec

# Tickの最後にやることの予約: どんなscheduleよりも遅く実行されるようにここに配置
    schedule function ui:misc/last 1t append
