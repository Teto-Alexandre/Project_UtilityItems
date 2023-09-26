scoreboard players set $check_cost ui_temp 0

#
tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"text":" CHECK_COST の解決を行います"}]

# データの書き出し
##コスト計算の種類( 0:そのまま, 1:条件付き軽減等 )
execute store result score $cost_type ui_temp run data get storage ui:temp card.cost_type
##コスト( タイプが0ならマナコスト )
execute store result score $cost ui_temp run data get storage ui:temp card.cost

# デバッグメッセ
tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"text":"コストタイプ"},{"score":{"name": "$cost_type","objective": "ui_temp"}},{"text":", コスト"},{"score":{"name": "$cost","objective": "ui_temp"}},{"text":"です"}]

# コストタイプ別に参照
execute if score $cost_type ui_temp matches 0 run function ui:tmw/272/common/check_cost/cost_type/0

# キャッシュクリア
scoreboard players reset $cost_type ui_temp
scoreboard players reset $cost ui_temp