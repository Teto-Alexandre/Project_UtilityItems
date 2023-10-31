execute store result score $count_list ui_temp run data get entity @s Inventory[{Slot:-106b}].tag.tmw.cg.list
execute store result score $count_num ui_temp run data get entity @s Inventory[{Slot:-106b}].tag.tmw.cg.list[0].Count
data modify storage ui:temp temp.list set from entity @s Inventory[{Slot:-106b}].tag.tmw.cg.list
data remove storage ui:temp temp.list[0]

execute if score $count_list ui_temp matches 1.. run function ui:tmw/272/oh/2/open3

scoreboard players remove $count ui_temp 1
execute if score $count ui_temp matches 1.. run function ui:tmw/272/oh/2/open2
