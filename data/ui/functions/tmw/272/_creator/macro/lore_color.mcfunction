data modify storage ui:temp temp.lore_temp set from storage ui:temp temp.lore[0]
execute store result score $length ui_temp run data get storage ui:temp temp.lore[0]

data modify storage ui:temp temp.lore_list set value []
data modify storage ui:temp temp.lore_new set value ""
data modify storage ui:temp temp.lore_code set value ""
function ui:tmw/272/_creator/macro/lore_color2

function ui:tmw/272/_creator/macro/lore_re/

scoreboard players remove $count ui_temp 1
data modify storage ui:temp temp.lore append from storage ui:temp temp.lore[0]
data remove storage ui:temp temp.lore[0]

execute if score $count ui_temp matches 1.. run function ui:tmw/272/_creator/macro/lore_color