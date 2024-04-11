data modify storage ui:temp temp set value {name:'{"text":"null"}'}
data modify storage ui:temp temp.name set from storage ui:temp card.name
data modify storage ui:temp temp.turn1 set from storage ui:temp card.turn1

scoreboard players set $turn_name ui_temp 0
function ui:tmw/272/effect/turn1/macro with storage ui:temp card

#
data modify storage ui:temp card.turn1 set value {limit:-1,interval:-1}
execute if data storage ui:temp temp.turn1.limit run data modify storage ui:temp card.turn1.limit set from storage ui:temp temp.turn1.limit
execute if data storage ui:temp temp.turn1.interval run data modify storage ui:temp card.turn1.interval set from storage ui:temp temp.turn1.interval
execute unless data storage ui:temp card.turn1{limit:-1} if data storage ui:temp temp.turn1_limit run data modify storage ui:temp card.turn1.limit set from storage ui:temp temp.turn1_limit
execute unless data storage ui:temp card.turn1{interval:-1} run data modify storage ui:temp card.turn1.interval set from storage ui:temp temp.turn1

#
execute store result score $turn_limit ui_temp run data get storage ui:temp card.turn1_limit
execute store result score $turn_max ui_temp run data get storage ui:temp card.turn1
execute if score $turn_limit ui_temp matches ..0 run scoreboard players set $turn_limit ui_temp 1
execute if score $turn_max ui_temp matches ..0 run scoreboard players set $turn_max ui_temp 1

#
execute if score $turn_name ui_temp >= $turn_limit ui_temp run tellraw @s ["",{"text":"このカードは","color":"gray"},{"score":{"name": "$turn_max","objective": "ui_temp"},"color":"gray"},{"text":"ターンに","color":"gray"},{"score":{"name": "$turn_limit","objective": "ui_temp"},"color":"gray"},{"text":"回しか使用できません","color":"gray"}]
execute if score $turn_name ui_temp >= $turn_limit ui_temp run scoreboard players set $check_cost ui_temp 0

#
execute if score $turn_name ui_temp < $turn_limit ui_temp if score $turn_max ui_temp matches 2.. store result storage ui:temp temp.turn int 1 run scoreboard players get $turn_max ui_temp
execute if score $turn_name ui_temp < $turn_limit ui_temp if score $turn_max ui_temp matches 2.. store result storage ui:temp temp.turn_max int 1 run scoreboard players get $turn_max ui_temp
execute if score $turn_name ui_temp < $turn_limit ui_temp run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.turn_name append from storage ui:temp temp

scoreboard players reset $turn_limit ui_temp
scoreboard players reset $turn_name ui_temp
scoreboard players reset $turn_max ui_temp

#
data remove storage ui:temp temp.turn1_list