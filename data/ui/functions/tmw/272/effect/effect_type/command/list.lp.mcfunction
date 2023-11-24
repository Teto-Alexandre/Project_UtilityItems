#say c

data modify storage ui:temp temp.temp.effect.command set from storage ui:temp temp.temp.effect.list[0]

function ui:tmw/272/effect/effect_type/command/simple with storage ui:temp temp.temp.effect

scoreboard players remove $count_command_list ui_temp 1
data remove storage ui:temp temp.temp.effect.list[0]
execute if score $count_command_list ui_temp matches 1.. run function ui:tmw/272/effect/effect_type/command/list.lp
