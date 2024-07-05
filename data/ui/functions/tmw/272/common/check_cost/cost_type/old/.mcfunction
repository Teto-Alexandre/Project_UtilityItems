scoreboard players set $check_cost ui_temp 0

# データの書き出し
##コスト計算の種類( 0:そのまま, 1:条件付き軽減等, 2:条件付き許可, 3:条件で一定量軽減 )
execute store result score $cost_type ui_temp run data get storage ui:temp card.cost_type
##コスト( タイプが0ならマナコスト )
execute store result score $cost ui_temp run data get storage ui:temp card.cost

# ここで封印
execute if score $is_card ui_temp matches 1 unless data storage ui:temp card.no_seal run scoreboard players operation $cost ui_temp += @s ui_tmw272_seal
execute if score $is_card ui_temp matches 1 unless data storage ui:temp card.no_cost_next run scoreboard players operation $cost ui_temp += @s ui_tmw272_cost_next

# スタンしているなら問答無用で却下
execute if score $is_card ui_temp matches 1 unless data storage ui:temp card.no_stun if score @s ui_tmw272_stun matches 1.. run tellraw @s [{"text":"    行動不能状態です","color":"gray"}]
execute if score $is_card ui_temp matches 1 unless data storage ui:temp card.no_stun if score @s ui_tmw272_stun matches 1.. run scoreboard players set $cost_type ui_temp -1

# コストタイプ別に参照
execute if score $cost_type ui_temp matches 0 run function ui:tmw/272/common/check_cost/cost_type/old/0
execute if score $cost_type ui_temp matches 1 run function ui:tmw/272/common/check_cost/cost_type/old/1/
execute if score $cost_type ui_temp matches 2 run function ui:tmw/272/common/check_cost/cost_type/old/2/
execute if score $cost_type ui_temp matches 3 run function ui:tmw/272/common/check_cost/cost_type/old/3/

# 名称ターン1
execute if score $check_cost ui_temp matches 1 unless data storage ui:temp card.turn1 if data storage ui:temp card.turn run data modify storage ui:temp card.turn1 set from storage ui:temp card.turn
execute if score $check_cost ui_temp matches 1 if data storage ui:temp card.turn1 run function ui:tmw/272/effect/turn1/

# コストを払う
execute if score $is_card ui_temp matches 1 if score $cost_type ui_temp matches 0..3 if score $check_cost ui_temp matches 1 run scoreboard players operation @s ui_tmw272_latest_card_cost = $cost ui_temp
execute if score $cost_type ui_temp matches 0..3 if score $check_cost ui_temp matches 1 run scoreboard players operation @s ui_tmw272_latest_cost = $cost ui_temp
execute if score $cost_type ui_temp matches 0..3 if score $check_cost ui_temp matches 1 run scoreboard players operation @s ui_tmw272_mana -= $cost ui_temp

# キャッシュクリア
scoreboard players reset $cost_type ui_temp
scoreboard players reset $cost ui_temp