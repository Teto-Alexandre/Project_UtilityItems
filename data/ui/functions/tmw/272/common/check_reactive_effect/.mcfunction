scoreboard players set $check_reactive_effect ui_temp 0

#
#tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"text":" CHECK_reactive_EFFECT の解決を行います"}]

# データの書き出し
##ディレイ計算の種類( 0:tick, 1:ターン開始からの時間 2:ターン終了までの時間 )
execute store result score $time_limit_turn ui_temp run data get storage ui:temp card.time_limit_turn

# デバッグメッセ
#tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"text":"コストタイプ"},{"score":{"name": "$cost_type","objective": "ui_temp"}},{"text":", コスト"},{"score":{"name": "$cost","objective": "ui_temp"}},{"text":"です"}]

# ディレイタイプ別に参照
execute if score $time_limit_turn ui_temp matches 0 run function ui:tmw/272/common/check_reactive_effect/delay_type/0

# キャッシュクリア
scoreboard players reset $time_limit_turn ui_temp