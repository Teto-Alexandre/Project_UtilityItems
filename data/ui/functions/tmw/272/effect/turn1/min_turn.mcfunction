execute store result score $turn_min_temp ui_temp run data get storage ui:temp temp.turn1_list[0].turn 1
scoreboard players operation $turn_min_turn ui_temp < $turn_min_temp ui_temp

data remove storage ui:temp temp.turn1_list[0]
scoreboard players remove $turn_name_temp ui_temp 1
execute if score $turn_name_temp ui_temp matches 1.. run function ui:tmw/272/effect/turn1/min_turn