function oh_my_dat:please

data modify storage ui:inventory temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Inventory
execute store result score $count ui_temp run data get storage ui:inventory temp

clear @s

execute if score $count ui_temp matches 1.. run function ui:template/inventory/pull.lp

data remove storage ui:inventory temp
