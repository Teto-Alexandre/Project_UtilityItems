# データ読み取り

    ## サブ: 101:スプラッシュ, 102:リフレク, 103:クイック, 104:ライト, 105:レンバク, 106:リジェネ
    ##     : 107:ボルテク, 108:キューバン, 109:ポイズン, 110:シールド, 111:スプリン, 112:アクセラ
    ##     : 201:リコール
    ##     : 301:トラップ
    ##     : 401:ブロードソード, 402:ヘルハウンド

# スロットが空白ならボタンが押されたと判断する＋changedを1に
    scoreboard players set $changed ui_temp 0
    data merge storage ui:common {input:{Mode:"check"}}
    function ui:common/ender
    execute if score $slot ui_temp matches 2 run scoreboard players set $sp ui_temp 201
    execute if score $slot ui_temp matches 3 run scoreboard players set $sp ui_temp 202
    execute if score $slot ui_temp matches 4 run scoreboard players set $sp ui_temp 301
    execute if score $slot ui_temp matches 5 run scoreboard players set $sp ui_temp 401
    execute if score $slot ui_temp matches 6 run scoreboard players set $sp ui_temp 402
    execute if score $slot ui_temp matches 11 run scoreboard players set $sp ui_temp 403
    execute if score $slot ui_temp matches 12 run scoreboard players set $sp ui_temp 404
    execute if score $slot ui_temp matches 13 run scoreboard players set $sp ui_temp 405
    execute if score $slot ui_temp matches 19 run scoreboard players set $page ui_temp 11
    execute if score $slot ui_temp matches 26 run scoreboard players set $page ui_temp 0
    execute if score $slot ui_temp matches 1.. run scoreboard players set $changed ui_temp 1

# 逆変換
    execute if score $changed ui_temp matches 1 run function ui:tmw/243/core/changed
    data remove storage ui:gun temp

# メニュー表示
    #
    item replace entity @s enderchest.1 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.2 with gray_stained_glass_pane{CustomModelData:121201,display:{Name:'{"text":"[リコール]","color":"gray","italic":false}',Lore:['{"text":"瞬時にリスポーン地点に戻る","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.3 with gray_stained_glass_pane{CustomModelData:121202,display:{Name:'{"text":"[ハイジャンプ]","color":"gray","italic":false}',Lore:['{"text":"その場で高く飛び上がる","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.4 with gray_stained_glass_pane{CustomModelData:121301,display:{Name:'{"text":"[トラップ]","color":"gray","italic":false}',Lore:['{"text":"その場に周囲の敵に反応する爆弾を設置","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.5 with gray_stained_glass_pane{CustomModelData:121401,display:{Name:'{"text":"[ブロードソード]","color":"gray","italic":false}',Lore:['{"text":"至近距離の敵を即死させる攻撃","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.6 with gray_stained_glass_pane{CustomModelData:121402,display:{Name:'{"text":"[ヘルハウンド]","color":"gray","italic":false}',Lore:['{"text":"最寄りの敵にミサイルを撃つ","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.7 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    #
    item replace entity @s enderchest.9 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.10 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

    item replace entity @s enderchest.11 with gray_stained_glass_pane{CustomModelData:121403,display:{Name:'{"text":"[ラインマーカー]","color":"gray","italic":false}',Lore:['{"text":"壁で反射し軌跡にいる敵をマーク","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.12 with gray_stained_glass_pane{CustomModelData:121404,display:{Name:'{"text":"[ブーメラン]","color":"gray","italic":false}',Lore:['{"text":"自分に返ってくるブーメランを発射する","color":"aqua","italic":false}','{"text":"回収すればある程度インクが回復する","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.13 with gray_stained_glass_pane{CustomModelData:121405,display:{Name:'{"text":"[ペネトレイター]","color":"gray","italic":false}',Lore:['{"text":"全てを貫通する砲撃を行う","color":"aqua","italic":false}','{"text":"直撃でダメージが倍加","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.14 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.15 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

    item replace entity @s enderchest.16 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.17 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.18 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.19 with arrow{display:{Name:'{"text":"前のページ","color":"white","italic":false}'},ui:{ismenu:1}}
    
    item replace entity @s enderchest.20 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.21 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.22 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.23 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.24 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

    item replace entity @s enderchest.25 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.26 with black_stained_glass_pane{display:{Name:'{"text":""}'},ui:{ismenu:1}}

# 変更した
    scoreboard players set $success ui_temp 1