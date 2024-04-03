scoreboard players set $check_cost ui_temp 0

#
#tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"text":" CHECK_COST の解決を行います"}]

# データの書き出し
##コスト計算の種類( 0:そのまま, 1:条件付き軽減等, 2:条件付き許可, 3:条件で一定量軽減 )
execute store result score $cost_type ui_temp run data get storage ui:temp card.cost.type
##コスト( タイプが0ならマナコスト )
execute store result score $cost ui_temp run data get storage ui:temp card.cost.amount
execute store result score $bypass ui_temp run data get storage ui:temp card.cost.bypass

# ここで封印
execute if score $broadcast_type ui_temp matches 1 unless data storage ui:temp temp.card.no_seal run scoreboard players operation $cost ui_temp += @s ui_tmw272_seal
execute if score $broadcast_type ui_temp matches 1 unless data storage ui:temp temp.card.no_cost_next run scoreboard players operation $cost ui_temp += @s ui_tmw272_cost_next

# デバッグメッセ
tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"text":"コストタイプ"},{"score":{"name": "$cost_type","objective": "ui_temp"}},{"text":", コスト"},{"score":{"name": "$cost","objective": "ui_temp"}},{"text":"です"}]

# スタンしているなら問答無用で却下
execute if score $broadcast_type ui_temp matches 1 unless data storage ui:temp temp.card.no_stun if score @s ui_tmw272_stun matches 1.. unless score $bypass ui_temp matches 1.. run tellraw @s [{"text":"    行動不能状態です","color":"gray"}]
execute if score $broadcast_type ui_temp matches 1 unless data storage ui:temp temp.card.no_stun if score @s ui_tmw272_stun matches 1.. unless score $bypass ui_temp matches 1.. run scoreboard players set $cost_type ui_temp -1

# コストタイプ別に参照
execute if score $cost_type ui_temp matches 0 unless score $bypass ui_temp matches 1.. run function ui:tmw/272/common/check_cost/cost_type/new/0
execute if score $cost_type ui_temp matches 1 unless score $bypass ui_temp matches 1.. run function ui:tmw/272/common/check_cost/cost_type/new/1/
execute if score $cost_type ui_temp matches 2 unless score $bypass ui_temp matches 1.. run function ui:tmw/272/common/check_cost/cost_type/new/2/
execute if score $cost_type ui_temp matches 3 unless score $bypass ui_temp matches 1.. run function ui:tmw/272/common/check_cost/cost_type/new/3/

# 名称ターン1
execute if score $check_cost ui_temp matches 1 if data storage ui:temp card.turn1 run function ui:tmw/272/effect/turn1/ with storage ui:temp card

# 自由記述欄
data modify storage ui:temp temp.effect set from storage ui:temp card.cost
execute if data storage ui:temp temp.effect.command run function ui:tmw/272/effect/effect_type/command/simple with storage ui:temp temp.effect
execute if data storage ui:temp temp.effect.list run function ui:tmw/272/effect/effect_type/command/list
data remove storage ui:temp temp

# コストを払う
execute if score $cost_type ui_temp matches 0..3 if score $check_cost ui_temp matches 1 unless score $bypass ui_temp matches 1.. run scoreboard players operation @s ui_tmw272_mana -= $cost ui_temp

# バイパス
execute if score $bypass ui_temp matches 1.. run scoreboard players set $check_cost ui_temp 1

# キャッシュクリア
scoreboard players reset $cost_type ui_temp
scoreboard players reset $cost ui_temp
scoreboard players reset $bypass ui_temp