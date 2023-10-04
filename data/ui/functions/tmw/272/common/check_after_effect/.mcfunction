scoreboard players set $check_after_effect ui_temp 0

#
tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"text":" CHECK_AFTER_EFFECT の解決を行います"}]

# データの書き出し
##コスト計算の種類( 0:そのまま, 1:条件付き軽減等 )
execute store result score $delay_type ui_temp run data get storage ui:temp card.delay_type
##コスト( タイプが0ならマナコスト )
execute store result score $delay ui_temp run data get storage ui:temp card.delay

# デバッグメッセ
tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"text":"コストタイプ"},{"score":{"name": "$cost_type","objective": "ui_temp"}},{"text":", コスト"},{"score":{"name": "$cost","objective": "ui_temp"}},{"text":"です"}]

# コストタイプ別に参照
execute if score $delay_type ui_temp matches 0 run function ui:tmw/272/common/check_after_effect/delay_type/0
execute if score $delay_type ui_temp matches 1 run function ui:tmw/272/common/check_after_effect/delay_type/1

# キャッシュクリア
scoreboard players reset $delay_type ui_temp
scoreboard players reset $delay ui_temp