function oh_my_dat:please

data modify storage ui:inventory temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Inventory
scoreboard players set $count ui_temp 1

clear @s

scoreboard players set $pull_first ui_temp 1

function ui:template/inventory/pull.lp

scoreboard players reset $pull_first ui_temp

data remove storage ui:inventory temp
