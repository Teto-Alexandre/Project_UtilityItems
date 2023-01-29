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
    execute if score $slot ui_temp matches 2 run scoreboard players set $sub ui_temp 455
    execute if score $slot ui_temp matches 3 run scoreboard players set $sub ui_temp 456
    execute if score $slot ui_temp matches 4 run scoreboard players set $sub ui_temp 457
    execute if score $slot ui_temp matches 5 run scoreboard players set $sub ui_temp 458
    execute if score $slot ui_temp matches 6 run scoreboard players set $sub ui_temp 459
    execute if score $slot ui_temp matches 11 run scoreboard players set $sub ui_temp 460
    execute if score $slot ui_temp matches 12 run scoreboard players set $sub ui_temp 461
    execute if score $slot ui_temp matches 19 run scoreboard players set $page ui_temp 1
    execute if score $slot ui_temp matches 26 run scoreboard players set $page ui_temp 0
    execute if score $slot ui_temp matches 1.. run scoreboard players set $changed ui_temp 1

# 逆変換
    execute if score $changed ui_temp matches 1 run function ui:tmw/243/core/changed
    data remove storage ui:gun temp

# メニュー表示
    function ui:tmw/243/core/panel/12

# 変更した
    scoreboard players set $success ui_temp 1