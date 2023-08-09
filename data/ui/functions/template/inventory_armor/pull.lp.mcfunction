data merge storage ui:common {input:{Num:0,Mode:"replace",Item:{id:"minecraft:cobblestone",Count:1b,tag:{}}}}
data modify storage ui:common input.Num set from storage ui:inventory_armor temp[0].Slot
execute store result score $template_inventory_armor ui_temp run data get storage ui:common input.Num
data modify storage ui:common input.Item.id set from storage ui:inventory_armor temp[0].id
data modify storage ui:common input.Item.Count set from storage ui:inventory_armor temp[0].Count
data modify storage ui:common input.Item.tag set from storage ui:inventory_armor temp[0].tag

execute if score $template_inventory_armor ui_temp matches 100..103 run function ui:common/item

data remove storage ui:inventory_armor temp[0]

scoreboard players remove $count ui_temp 1
execute if score $count ui_temp matches 1.. run function ui:template/inventory_armor/pull.lp