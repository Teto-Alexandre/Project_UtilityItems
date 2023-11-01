execute store result score $count_cards ui_temp run data get entity @s Inventory[{Slot:-106b}].tag.tmw.cg.cards
execute store result score $count_list ui_temp run data get entity @s Inventory[{Slot:-106b}].tag.tmw.cg.list
execute store result score $count_mod ui_temp run data get entity @s Inventory[{Slot:-106b}].tag.tmw.cg.mod
data modify storage ui:temp temp.list set from entity @s Inventory[{Slot:-106b}].tag.tmw.cg.list
#data remove storage ui:temp temp.list[0]

execute if score $count_list ui_temp matches 1.. if score $count_mod ui_temp matches 1.. run function ui:tmw/272/oh/2/open/each_cards

scoreboard players remove $count ui_temp 1
execute if score $count ui_temp matches 1.. run function ui:tmw/272/oh/2/open/chest_each
