data modify storage ui:temp temp.temp.effect.list set from storage ui:temp temp.effect.list

execute store result score $count_command_list ui_temp run data get storage ui:temp temp.temp.effect.list
execute if score $count_command_list ui_temp matches 1.. run function ui:tmw/272/effect/effect_type/command/list.lp

scoreboard players reset $count_command_list ui_temp