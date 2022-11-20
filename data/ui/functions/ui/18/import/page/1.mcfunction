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
    execute if score $slot ui_temp matches 2 run scoreboard players set $sub ui_temp 101
    execute if score $slot ui_temp matches 3 run scoreboard players set $sub ui_temp 102
    execute if score $slot ui_temp matches 4 run scoreboard players set $sub ui_temp 103
    execute if score $slot ui_temp matches 5 run scoreboard players set $sub ui_temp 104
    execute if score $slot ui_temp matches 6 run scoreboard players set $sub ui_temp 105
    execute if score $slot ui_temp matches 11 run scoreboard players set $sub ui_temp 106
    execute if score $slot ui_temp matches 12 run scoreboard players set $sub ui_temp 107
    execute if score $slot ui_temp matches 13 run scoreboard players set $sub ui_temp 108
    execute if score $slot ui_temp matches 14 run scoreboard players set $sub ui_temp 109
    execute if score $slot ui_temp matches 15 run scoreboard players set $sub ui_temp 110
    execute if score $slot ui_temp matches 20 run scoreboard players set $sub ui_temp 111
    execute if score $slot ui_temp matches 21 run scoreboard players set $sub ui_temp 112
    execute if score $slot ui_temp matches 22 run scoreboard players set $sub ui_temp 113
    execute if score $slot ui_temp matches 23 run scoreboard players set $sub ui_temp 114
    execute if score $slot ui_temp matches 24 run scoreboard players set $sub ui_temp 201
    execute if score $slot ui_temp matches 25 run scoreboard players set $page ui_temp 2
    execute if score $slot ui_temp matches 26 run scoreboard players set $page ui_temp 0
    execute if score $slot ui_temp matches 1.. run scoreboard players set $changed ui_temp 1

# 逆変換
    execute if score $changed ui_temp matches 1 run function ui:tmw/243/core/changed
    data remove storage ui:gun temp

# メニュー表示
    #
    item replace entity @s enderchest.1 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.2 with gray_stained_glass_pane{CustomModelData:121101,display:{Name:'{"text":"[スプラッシュボム]","color":"gray","italic":false}',Lore:['{"text":"接地して1秒後に爆発する爆弾を投げる","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.3 with gray_stained_glass_pane{CustomModelData:121102,display:{Name:'{"text":"[リフレクター]","color":"gray","italic":false}',Lore:['{"text":"3秒間持続する反射結界を投げる","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.4 with gray_stained_glass_pane{CustomModelData:121103,display:{Name:'{"text":"[クイックボム]","color":"gray","italic":false}',Lore:['{"text":"何かに当たると爆発する爆弾を投げる","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.5 with gray_stained_glass_pane{CustomModelData:121104,display:{Name:'{"text":"[ライトアップ]","color":"gray","italic":false}',Lore:['{"text":"広範囲の敵を照らす装置を投げる","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.6 with gray_stained_glass_pane{CustomModelData:121105,display:{Name:'{"text":"[レンバクボム]","color":"gray","italic":false}',Lore:['{"text":"連続で爆発する 最後の爆発は強力","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.7 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    #
    item replace entity @s enderchest.9 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.10 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}

    item replace entity @s enderchest.11 with gray_stained_glass_pane{CustomModelData:121106,display:{Name:'{"text":"[ナノヒール]","color":"gray","italic":false}',Lore:['{"text":"3秒間周囲の味方を癒す装置を投げる","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.12 with gray_stained_glass_pane{CustomModelData:121107,display:{Name:'{"text":"[ボルテックス]","color":"gray","italic":false}',Lore:['{"text":"4秒間持続するインクの渦を発生させる","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.13 with gray_stained_glass_pane{CustomModelData:121108,display:{Name:'{"text":"[キューバンボム]","color":"gray","italic":false}',Lore:['{"text":"地形に吸着する爆弾を投げる","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.14 with gray_stained_glass_pane{CustomModelData:121109,display:{Name:'{"text":"[ポイズンガス]","color":"gray","italic":false}',Lore:['{"text":"移動とインク回復を阻害する毒を散布する","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.15 with gray_stained_glass_pane{CustomModelData:121110,display:{Name:'{"text":"[インスタントシールド]","color":"gray","italic":false}',Lore:['{"text":"敵の弾を防ぐ盾を設置する","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}

    item replace entity @s enderchest.16 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.17 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.18 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    item replace entity @s enderchest.19 with gray_stained_glass_pane{CustomModelData:120001,display:{Name:'{"text":""}'},ui:{ismenu:1}}
    
    item replace entity @s enderchest.20 with gray_stained_glass_pane{CustomModelData:121111,display:{Name:'{"text":"[スプリンクラー]","color":"gray","italic":false}',Lore:['{"text":"持続的に塗り広げる装置を設置する","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.21 with gray_stained_glass_pane{CustomModelData:121112,display:{Name:'{"text":"[アクセラレーター]","color":"gray","italic":false}',Lore:['{"text":"弾を加速する装置を投げる","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.22 with gray_stained_glass_pane{CustomModelData:121113,display:{Name:'{"text":"[ロボットボム]","color":"gray","italic":false}',Lore:['{"text":"敵を追跡する爆弾を投げる","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.23 with gray_stained_glass_pane{CustomModelData:121114,display:{Name:'{"text":"[カーリングボム]","color":"gray","italic":false}',Lore:['{"text":"一直線に進み反射する爆弾を投げる","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}
    item replace entity @s enderchest.24 with gray_stained_glass_pane{CustomModelData:121201,display:{Name:'{"text":"[リコール]","color":"gray","italic":false}',Lore:['{"text":"瞬時にリスポーン地点に戻る","color":"aqua","italic":false}']},ui:{ismenu:1},HideFlags:2}

    item replace entity @s enderchest.25 with arrow{display:{Name:'{"text":"次のページ","color":"white","italic":false}'},ui:{ismenu:1}}
    item replace entity @s enderchest.26 with black_stained_glass_pane{display:{Name:'{"text":""}'},ui:{ismenu:1}}

# 変更した
    scoreboard players set $success ui_temp 1