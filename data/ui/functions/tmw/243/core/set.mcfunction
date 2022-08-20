# データ読み取り
    data modify storage ui:gun temp set from entity @s EnderItems[{Slot:8b}].tag
    execute store result score $sub ui_temp run data get storage ui:gun temp.tmw.gun.SubType
    execute store result score $sp ui_temp run data get storage ui:gun temp.tmw.gun.SPType

    ## サブ: 101:スプラッシュ, 102:リフレク, 103:クイック, 104:ライト, 105:レンバク, 106:リジェネ
    ##     : 107:ボルテク, 108:キューバン, 109:ポイズン, 110:シールド, 111:スプリン, 112:アクセラ
    ##     : 201:リコール
    ##     : 301:トラップ
    ##     : 401:ブロードソード, 402:ヘルハウンド
    ## スペ: 151:トルネード, 152:アメフラシ
    ##     : 251:ノヴァ, 252:スーパースター, 253:サブ減, 254:インク, 255:レーダー, 256:チャクチ
    ##     : 257:サヴァ
    ##     : 351:メガホン
    ##     : 451:スパショ, 452:ミサイル, 453:トライ, 454:ハイドロ, 455:ジェッパ

# スロットが空白ならボタンが押されたと判断する＋changedを1に
    scoreboard players set $changed ui_temp 0
    data merge storage ui:common {input:{Mode:"check"}}
    function ui:common/ender
    execute if score $slot ui_temp matches 2 run scoreboard players add $sub ui_temp 1
    execute if score $slot ui_temp matches 3 run scoreboard players add $sp ui_temp 1
    execute if score $slot ui_temp matches 20 run scoreboard players remove $sub ui_temp 1
    execute if score $slot ui_temp matches 21 run scoreboard players remove $sp ui_temp 1
    execute if score $slot ui_temp matches 1.. run scoreboard players set $changed ui_temp 1

# 整合性を取る
    ## サブ
    execute if score $sub ui_temp matches 113 run scoreboard players set $sub ui_temp 201
    execute if score $sub ui_temp matches 202 run scoreboard players set $sub ui_temp 301
    execute if score $sub ui_temp matches 302 run scoreboard players set $sub ui_temp 401
    execute if score $sub ui_temp matches 403 run scoreboard players set $sub ui_temp 101
    execute if score $sub ui_temp matches 100 run scoreboard players set $sub ui_temp 402
    execute if score $sub ui_temp matches 400 run scoreboard players set $sub ui_temp 301
    execute if score $sub ui_temp matches 300 run scoreboard players set $sub ui_temp 201
    execute if score $sub ui_temp matches 200 run scoreboard players set $sub ui_temp 112
    ## スペ
    execute if score $sp ui_temp matches 153 run scoreboard players set $sp ui_temp 251
    execute if score $sp ui_temp matches 258 run scoreboard players set $sp ui_temp 351
    execute if score $sp ui_temp matches 352 run scoreboard players set $sp ui_temp 451
    execute if score $sp ui_temp matches 457 run scoreboard players set $sp ui_temp 151
    execute if score $sp ui_temp matches 150 run scoreboard players set $sp ui_temp 456
    execute if score $sp ui_temp matches 450 run scoreboard players set $sp ui_temp 351
    execute if score $sp ui_temp matches 350 run scoreboard players set $sp ui_temp 257
    execute if score $sp ui_temp matches 250 run scoreboard players set $sp ui_temp 152

# 逆変換
    execute if score $changed ui_temp matches 1 run function ui:tmw/243/core/changed
    data remove storage ui:gun temp

# メニュー表示
    #
    item replace entity @s enderchest.1 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.2 with lime_stained_glass_pane{display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.3 with lime_stained_glass_pane{display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.4 with red_stained_glass_pane{display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.5 with red_stained_glass_pane{display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.6 with red_stained_glass_pane{display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.7 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    #
    item replace entity @s enderchest.9 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.10 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

    execute if score $sub ui_temp matches 101 run item replace entity @s enderchest.11 with wooden_shovel{display:{Name:'{"text":"サブウェポン変更","color":"gray","italic":false}',Lore:['{"text":"[スプラッシュボム]","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    execute if score $sub ui_temp matches 102 run item replace entity @s enderchest.11 with stone_shovel{display:{Name:'{"text":"サブウェポン変更","color":"gray","italic":false}',Lore:['{"text":"[リフレクター]","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    execute if score $sub ui_temp matches 103 run item replace entity @s enderchest.11 with iron_shovel{display:{Name:'{"text":"サブウェポン変更","color":"gray","italic":false}',Lore:['{"text":"[クイックボム]","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    execute if score $sub ui_temp matches 104 run item replace entity @s enderchest.11 with golden_shovel{display:{Name:'{"text":"サブウェポン変更","color":"gray","italic":false}',Lore:['{"text":"[ライトアップ]","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    execute if score $sub ui_temp matches 105 run item replace entity @s enderchest.11 with diamond_shovel{display:{Name:'{"text":"サブウェポン変更","color":"gray","italic":false}',Lore:['{"text":"[レンバクボム]","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    execute if score $sub ui_temp matches 106 run item replace entity @s enderchest.11 with wooden_shovel{display:{Name:'{"text":"サブウェポン変更","color":"gray","italic":false}',Lore:['{"text":"[ナノヒール]","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    execute if score $sub ui_temp matches 107 run item replace entity @s enderchest.11 with stone_shovel{display:{Name:'{"text":"サブウェポン変更","color":"gray","italic":false}',Lore:['{"text":"[ボルテックス]","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    execute if score $sub ui_temp matches 108 run item replace entity @s enderchest.11 with iron_shovel{display:{Name:'{"text":"サブウェポン変更","color":"gray","italic":false}',Lore:['{"text":"[キューバンボム]","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    execute if score $sub ui_temp matches 109 run item replace entity @s enderchest.11 with golden_shovel{display:{Name:'{"text":"サブウェポン変更","color":"gray","italic":false}',Lore:['{"text":"[ポイズンガス]","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    execute if score $sub ui_temp matches 110 run item replace entity @s enderchest.11 with diamond_shovel{display:{Name:'{"text":"サブウェポン変更","color":"gray","italic":false}',Lore:['{"text":"[インスタントシールド]","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    execute if score $sub ui_temp matches 111 run item replace entity @s enderchest.11 with wooden_shovel{display:{Name:'{"text":"サブウェポン変更","color":"gray","italic":false}',Lore:['{"text":"[スプリンクラー]","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    execute if score $sub ui_temp matches 112 run item replace entity @s enderchest.11 with stone_shovel{display:{Name:'{"text":"サブウェポン変更","color":"gray","italic":false}',Lore:['{"text":"[アクセラレーター]","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    execute if score $sub ui_temp matches 201 run item replace entity @s enderchest.11 with iron_shovel{display:{Name:'{"text":"サブウェポン変更","color":"gray","italic":false}',Lore:['{"text":"[リコール]","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    execute if score $sub ui_temp matches 301 run item replace entity @s enderchest.11 with golden_shovel{display:{Name:'{"text":"サブウェポン変更","color":"gray","italic":false}',Lore:['{"text":"[トラップ]","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    execute if score $sub ui_temp matches 401 run item replace entity @s enderchest.11 with diamond_shovel{display:{Name:'{"text":"サブウェポン変更","color":"gray","italic":false}',Lore:['{"text":"[ブロードソード]","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    execute if score $sub ui_temp matches 402 run item replace entity @s enderchest.11 with wooden_shovel{display:{Name:'{"text":"サブウェポン変更","color":"gray","italic":false}',Lore:['{"text":"[ヘルハウンド]","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}

    execute if score $sp ui_temp matches 151 run item replace entity @s enderchest.12 with wooden_sword{display:{Name:'{"text":"スペシャルウェポン変更","color":"gray","italic":false}',Lore:['{"text":"[トルネード]","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    execute if score $sp ui_temp matches 152 run item replace entity @s enderchest.12 with stone_sword{display:{Name:'{"text":"スペシャルウェポン変更","color":"gray","italic":false}',Lore:['{"text":"[アメフラシ]","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    execute if score $sp ui_temp matches 251 run item replace entity @s enderchest.12 with iron_sword{display:{Name:'{"text":"スペシャルウェポン変更","color":"gray","italic":false}',Lore:['{"text":"[ノヴァ]","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    execute if score $sp ui_temp matches 252 run item replace entity @s enderchest.12 with golden_sword{display:{Name:'{"text":"スペシャルウェポン変更","color":"gray","italic":false}',Lore:['{"text":"[スーパースター]","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    execute if score $sp ui_temp matches 253 run item replace entity @s enderchest.12 with diamond_sword{display:{Name:'{"text":"スペシャルウェポン変更","color":"gray","italic":false}',Lore:['{"text":"[ボムラッシュ]","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    execute if score $sp ui_temp matches 254 run item replace entity @s enderchest.12 with wooden_sword{display:{Name:'{"text":"スペシャルウェポン変更","color":"gray","italic":false}',Lore:['{"text":"[インクリメント]","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    execute if score $sp ui_temp matches 255 run item replace entity @s enderchest.12 with stone_sword{display:{Name:'{"text":"スペシャルウェポン変更","color":"gray","italic":false}',Lore:['{"text":"[レーダー]","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    execute if score $sp ui_temp matches 256 run item replace entity @s enderchest.12 with iron_sword{display:{Name:'{"text":"スペシャルウェポン変更","color":"gray","italic":false}',Lore:['{"text":"[スーパーチャクチ]","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    execute if score $sp ui_temp matches 257 run item replace entity @s enderchest.12 with golden_sword{display:{Name:'{"text":"スペシャルウェポン変更","color":"gray","italic":false}',Lore:['{"text":"[サヴァイブ]","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    execute if score $sp ui_temp matches 351 run item replace entity @s enderchest.12 with diamond_sword{display:{Name:'{"text":"スペシャルウェポン変更","color":"gray","italic":false}',Lore:['{"text":"[メガホンレーザー]","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    execute if score $sp ui_temp matches 451 run item replace entity @s enderchest.12 with wooden_sword{display:{Name:'{"text":"スペシャルウェポン変更","color":"gray","italic":false}',Lore:['{"text":"[スーパーショット]","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    execute if score $sp ui_temp matches 452 run item replace entity @s enderchest.12 with stone_sword{display:{Name:'{"text":"スペシャルウェポン変更","color":"gray","italic":false}',Lore:['{"text":"[マルチミサイル]","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    execute if score $sp ui_temp matches 453 run item replace entity @s enderchest.12 with iron_sword{display:{Name:'{"text":"スペシャルウェポン変更","color":"gray","italic":false}',Lore:['{"text":"[トライアングル]","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    execute if score $sp ui_temp matches 454 run item replace entity @s enderchest.12 with golden_sword{display:{Name:'{"text":"スペシャルウェポン変更","color":"gray","italic":false}',Lore:['{"text":"[ハイドロポンプ]","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    execute if score $sp ui_temp matches 455 run item replace entity @s enderchest.12 with diamond_sword{display:{Name:'{"text":"スペシャルウェポン変更","color":"gray","italic":false}',Lore:['{"text":"[ジェットパック]","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    execute if score $sp ui_temp matches 456 run item replace entity @s enderchest.12 with wooden_sword{display:{Name:'{"text":"スペシャルウェポン変更","color":"gray","italic":false}',Lore:['{"text":"[バウンシーボム]","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}

    item replace entity @s enderchest.13 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.14 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.15 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.16 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.17 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.18 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.19 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.20 with lime_stained_glass_pane{display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.21 with lime_stained_glass_pane{display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.22 with red_stained_glass_pane{display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.23 with red_stained_glass_pane{display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.24 with red_stained_glass_pane{display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.25 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.26 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

# changedならデータ書き込み

# 変更した
    scoreboard players set $success ui_temp 1