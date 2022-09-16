# データ読み取り

    ## スペ: 151:トルネード, 152:アメフラシ
    ##     : 251:ノヴァ, 252:スーパースター, 253:サブ減, 254:インク, 255:レーダー, 256:チャクチ
    ##     : 257:サヴァ
    ##     : 351:メガホン
    ##     : 451:スパショ, 452:ミサイル, 453:トライ, 454:ハイドロ, 455:ジェッパ

# スロットが空白ならボタンが押されたと判断する＋changedを1に
    scoreboard players set $changed ui_temp 0
    data merge storage ui:common {input:{Mode:"check"}}
    function ui:common/ender
    execute if score $slot ui_temp matches 2 run scoreboard players set $sp ui_temp 151
    execute if score $slot ui_temp matches 3 run scoreboard players set $sp ui_temp 152
    execute if score $slot ui_temp matches 4 run scoreboard players set $sp ui_temp 251
    execute if score $slot ui_temp matches 5 run scoreboard players set $sp ui_temp 252
    execute if score $slot ui_temp matches 6 run scoreboard players set $sp ui_temp 253
    execute if score $slot ui_temp matches 11 run scoreboard players set $sp ui_temp 254
    execute if score $slot ui_temp matches 12 run scoreboard players set $sp ui_temp 255
    execute if score $slot ui_temp matches 13 run scoreboard players set $sp ui_temp 256
    execute if score $slot ui_temp matches 14 run scoreboard players set $sp ui_temp 257
    execute if score $slot ui_temp matches 15 run scoreboard players set $sp ui_temp 351
    execute if score $slot ui_temp matches 20 run scoreboard players set $sp ui_temp 451
    execute if score $slot ui_temp matches 21 run scoreboard players set $sp ui_temp 452
    execute if score $slot ui_temp matches 22 run scoreboard players set $sp ui_temp 453
    execute if score $slot ui_temp matches 23 run scoreboard players set $sp ui_temp 454
    execute if score $slot ui_temp matches 24 run scoreboard players set $sp ui_temp 455
    execute if score $slot ui_temp matches 25 run scoreboard players set $page ui_temp 12
    execute if score $slot ui_temp matches 26 run scoreboard players set $page ui_temp 0
    execute if score $slot ui_temp matches 1.. run scoreboard players set $changed ui_temp 1

# 逆変換
    execute if score $changed ui_temp matches 1 run function ui:tmw/243/core/changed
    data remove storage ui:gun temp

# メニュー表示
    #
    item replace entity @s enderchest.1 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.2 with gray_stained_glass_pane{CustomModelData:121151,display:{Name:'{"text":"[トルネード]","color":"gray","italic":false}',Lore:['{"text":"インクの竜巻を発生させる装置を投げる","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.3 with gray_stained_glass_pane{CustomModelData:121152,display:{Name:'{"text":"[アメフラシ]","color":"gray","italic":false}',Lore:['{"text":"インクの雨雲を発生させる装置を投げる","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.4 with gray_stained_glass_pane{CustomModelData:121251,display:{Name:'{"text":"[ノヴァ]","color":"gray","italic":false}',Lore:['{"text":"自分を中心に広範囲を塗る","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.5 with gray_stained_glass_pane{CustomModelData:121252,display:{Name:'{"text":"[スーパースター]","color":"gray","italic":false}',Lore:['{"text":"無敵になり歩いた場所を塗れる","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.6 with gray_stained_glass_pane{CustomModelData:121253,display:{Name:'{"text":"[ボムラッシュ]","color":"gray","italic":false}',Lore:['{"text":"サブの消費インクが激減する","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.7 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    #
    item replace entity @s enderchest.9 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.10 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.11 with gray_stained_glass_pane{CustomModelData:121254,display:{Name:'{"text":"[インクリメント]","color":"gray","italic":false}',Lore:['{"text":"インクの回復速度が増加する","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.12 with gray_stained_glass_pane{CustomModelData:121255,display:{Name:'{"text":"[レーダー]","color":"gray","italic":false}',Lore:['{"text":"全ての敵の位置を表示する","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.13 with gray_stained_glass_pane{CustomModelData:121256,display:{Name:'{"text":"[スーパーチャクチ]","color":"gray","italic":false}',Lore:['{"text":"飛び上がって大爆発する","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.14 with gray_stained_glass_pane{CustomModelData:121257,display:{Name:'{"text":"[サヴァイブ]","color":"gray","italic":false}',Lore:['{"text":"チーム全員に一度だけ死を回避させる","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.15 with gray_stained_glass_pane{CustomModelData:121351,display:{Name:'{"text":"[メガホンレーザー]","color":"gray","italic":false}',Lore:['{"text":"壁を貫通する攻撃を行う","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.16 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.17 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.18 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.19 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.20 with gray_stained_glass_pane{CustomModelData:121451,display:{Name:'{"text":"[スーパーショット]","color":"gray","italic":false}',Lore:['{"text":"縦に長いショットを発射する","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.21 with gray_stained_glass_pane{CustomModelData:121452,display:{Name:'{"text":"[マルチミサイル]","color":"gray","italic":false}',Lore:['{"text":"大量のミサイルを発射する","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.22 with gray_stained_glass_pane{CustomModelData:121453,display:{Name:'{"text":"[トライアングル]","color":"gray","italic":false}',Lore:['{"text":"3方向にショットを発射する","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.23 with gray_stained_glass_pane{CustomModelData:121454,display:{Name:'{"text":"[ハイドロポンプ]","color":"gray","italic":false}',Lore:['{"text":"一直線にショットを発射する","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.24 with gray_stained_glass_pane{CustomModelData:121455,display:{Name:'{"text":"[ジェットパック]","color":"gray","italic":false}',Lore:['{"text":"空を飛び爆発するショットを発射する","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.25 with arrow{display:{Name:'{"text":"次のページ","color":"white","italic":false}'},ui:{ismenu:1}}
    item replace entity @s enderchest.26 with black_stained_glass_pane{display:{Name:'{"text":""}'},ui:{ismenu:1}}
    #item replace entity @s enderchest.12 with quartz{display:{Name:'{"text":"[バウンシーボム]","color":"gray","italic":false}',Lore:['{"text":"b","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}

# 変更した
    scoreboard players set $success ui_temp 1