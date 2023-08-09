function oh_my_dat:please

data modify storage ui:inventory_armor temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryArmor
execute store result score $count ui_temp run data get storage ui:inventory_armor temp

item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

execute if score $count ui_temp matches 1.. run function ui:template/inventory_armor/pull.lp

data remove storage ui:inventory_armor temp

scoreboard players reset $template_inventory_armor ui_temp
