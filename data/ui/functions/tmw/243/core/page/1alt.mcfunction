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
    execute if score $slot ui_temp matches 2 run scoreboard players set $sp ui_temp 101
    execute if score $slot ui_temp matches 3 run scoreboard players set $sp ui_temp 102
    execute if score $slot ui_temp matches 4 run scoreboard players set $sp ui_temp 103
    execute if score $slot ui_temp matches 5 run scoreboard players set $sp ui_temp 104
    execute if score $slot ui_temp matches 6 run scoreboard players set $sp ui_temp 105
    execute if score $slot ui_temp matches 11 run scoreboard players set $sp ui_temp 106
    execute if score $slot ui_temp matches 12 run scoreboard players set $sp ui_temp 107
    execute if score $slot ui_temp matches 13 run scoreboard players set $sp ui_temp 108
    execute if score $slot ui_temp matches 14 run scoreboard players set $sp ui_temp 109
    execute if score $slot ui_temp matches 15 run scoreboard players set $sp ui_temp 110
    execute if score $slot ui_temp matches 20 run scoreboard players set $sp ui_temp 111
    execute if score $slot ui_temp matches 21 run scoreboard players set $sp ui_temp 112
    execute if score $slot ui_temp matches 22 run scoreboard players set $sp ui_temp 113
    execute if score $slot ui_temp matches 23 run scoreboard players set $sp ui_temp 114
    execute if score $slot ui_temp matches 24 run scoreboard players set $sp ui_temp 115
    execute if score $slot ui_temp matches 25 run scoreboard players set $page ui_temp 12
    execute if score $slot ui_temp matches 26 run scoreboard players set $page ui_temp 0
    execute if score $slot ui_temp matches 1.. run scoreboard players set $changed ui_temp 1

# 逆変換
    execute if score $changed ui_temp matches 1 run function ui:tmw/243/core/changed
    data remove storage ui:gun temp

# メニュー表示
    function ui:tmw/243/core/panel/1

# 変更した
    scoreboard players set $success ui_temp 1