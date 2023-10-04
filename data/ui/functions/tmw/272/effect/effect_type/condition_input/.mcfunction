# 数値を入れる
execute unless data storage ui:temp temp.effect{effect_mode:"add"} run scoreboard players set $condition_checker ui_temp 0

execute if data storage ui:temp temp.effect{input:"health"} run scoreboard players operation $condition_checker ui_temp += @s ui_tmw272_health
execute if data storage ui:temp temp.effect{input:"mana"} run scoreboard players operation $condition_checker ui_temp += @s ui_tmw272_mana
execute if data storage ui:temp temp.effect{input:"mana_max"} run scoreboard players operation $condition_checker ui_temp += @s ui_tmw272_mana_max
execute if data storage ui:temp temp.effect{input:"var"} run scoreboard players operation $condition_checker ui_temp += $var ui_temp
execute if data storage ui:temp temp.effect{input:"rand"} run scoreboard players operation $condition_checker ui_temp += $rand ui_temp

execute if data storage ui:temp temp.effect{input:"hand_num"} run execute store result score $condition_checker_temp ui_temp run data get entity @s Inventory
execute if data storage ui:temp temp.effect{input:"hand_num"} run scoreboard players operation $condition_checker ui_temp += $condition_checker_temp ui_temp
