execute store result score $count ui_temp run data get entity @s Inventory[{Slot:-106b}].Count

execute if score $count ui_temp matches 1.. run function ui:tmw/272/oh/2/open/chest_each

item replace entity @s weapon.offhand with air

scoreboard players reset $count_cards ui_temp
scoreboard players reset $count_list ui_temp
scoreboard players reset $count_mod ui_temp