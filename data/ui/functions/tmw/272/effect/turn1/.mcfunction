data modify storage ui:temp temp set value {name:'{"text":"null"}',turn1:1}
data modify storage ui:temp temp.name set from storage ui:temp card.name
data modify storage ui:temp temp.turn1 set from storage ui:temp card.turn1

scoreboard players set $turn_name ui_temp 0
function ui:tmw/272/effect/turn1/macro with storage ui:temp card

# 最短アンロック
scoreboard players set $turn_min_turn ui_temp 2147483647
scoreboard players operation $turn_name_temp ui_temp = $turn_name ui_temp
execute if score $turn_name_temp ui_temp matches 1.. run function ui:tmw/272/effect/turn1/min_turn
scoreboard players operation $turn_min_turn ui_temp > #1 ui_num

#
data modify storage ui:temp card.turn1 set value {limit:-999,interval:-999}
execute if data storage ui:temp temp.turn1.limit run data modify storage ui:temp card.turn1.limit set from storage ui:temp temp.turn1.limit
execute if data storage ui:temp temp.turn1.interval run data modify storage ui:temp card.turn1.interval set from storage ui:temp temp.turn1.interval
execute if data storage ui:temp card.turn1{limit:-999} if data storage ui:temp temp.turn1_limit run data modify storage ui:temp card.turn1.limit set from storage ui:temp temp.turn1_limit
execute if data storage ui:temp card.turn1{limit:-999} unless data storage ui:temp temp.turn1_limit run data modify storage ui:temp card.turn1.limit set value 1
execute if data storage ui:temp card.turn1{interval:-999} run data modify storage ui:temp card.turn1.interval set from storage ui:temp temp.turn1

#
execute store result score $turn_limit ui_temp run data get storage ui:temp card.turn1.limit
execute store result score $turn_max ui_temp run data get storage ui:temp card.turn1.interval
execute if score $turn_limit ui_temp matches 0 run scoreboard players set $turn_limit ui_temp 1
execute if score $turn_max ui_temp matches 0 run scoreboard players set $turn_max ui_temp 1

#
execute if score $turn_max ui_temp matches 1.. if score $turn_name ui_temp >= $turn_limit ui_temp unless data storage ui:temp card.turn1_mute run tellraw @s ["",{"text":"このカードは","color":"gray"},{"score":{"name":"$turn_max","objective":"ui_temp"},"color":"gray"},{"text":"ターンに","color":"gray"},{"score":{"name":"$turn_limit","objective":"ui_temp"},"color":"gray"},{"text":"回しか使用できません (解除:","color":"gray"},{"score":{"name":"$turn_min_turn","objective":"ui_temp"},"color":"gray"},{"text":"ターン後)","color":"gray"}]
execute if score $turn_max ui_temp matches ..-1 if score $turn_name ui_temp >= $turn_limit ui_temp unless data storage ui:temp card.turn1_mute run tellraw @s ["",{"text":"このカードは戦線中ではもう使用できません","color":"gray"}]
execute if score $turn_name ui_temp >= $turn_limit ui_temp run scoreboard players set $check_cost ui_temp 0

#
execute if score $turn_name ui_temp < $turn_limit ui_temp unless score $turn_max ui_temp matches 1 store result storage ui:temp temp.turn int 1 run scoreboard players get $turn_max ui_temp
execute if score $turn_name ui_temp < $turn_limit ui_temp unless score $turn_max ui_temp matches 1 store result storage ui:temp temp.turn_max int 1 run scoreboard players get $turn_max ui_temp
execute if score $turn_name ui_temp < $turn_limit ui_temp run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.turn_name append from storage ui:temp temp

scoreboard players reset $turn_min_temp ui_temp
scoreboard players reset $turn_min_turn ui_temp
scoreboard players reset $turn_limit ui_temp
scoreboard players reset $turn_name ui_temp
scoreboard players reset $turn_name_temp ui_temp
scoreboard players reset $turn_max ui_temp

#
data remove storage ui:temp temp.turn1_list