scoreboard players set $check_reactive_effect ui_temp 0

# データの書き出し
##ディレイ計算の種類( 0:tick, 1:ターン開始からの時間 2:ターン終了までの時間 )
execute store result score $time_limit_turn ui_temp run data get storage ui:temp card.time_limit_turn

# ディレイタイプ別に参照
execute if score $time_limit_turn ui_temp matches 1.. run function ui:tmw/272/common/check_intercept_command/delay_type/0

# キャッシュクリア
scoreboard players reset $time_limit_turn ui_temp