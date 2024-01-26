#function ui:tmw/18/macro/function.macro with storage ui:temp skill

data modify storage ui:temp skill_temp.list set from storage ui:temp skill.list
execute store result score $count_command_list ui_temp run data get storage ui:temp skill_temp.list
execute if score $count_command_list ui_temp matches 1.. run function ui:tmw/18/macro/list.lp
scoreboard players reset $count_command_list ui_temp
data remove storage ui:temp skill_temp