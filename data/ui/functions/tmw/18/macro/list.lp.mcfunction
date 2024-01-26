#say c

data modify storage ui:temp skill_temp.command set from storage ui:temp skill_temp.list[0]

function ui:tmw/18/macro/command with storage ui:temp skill_temp

scoreboard players remove $count_command_list ui_temp 1
data remove storage ui:temp skill_temp.list[0]
execute if score $count_command_list ui_temp matches 1.. run function ui:tmw/18/macro/list.lp
