#scoreboard players remove $count_cards ui_temp 1
#scoreboard players remove $count_list ui_temp 1
#scoreboard players operation $count_mod ui_temp -= $temp ui_temp

summon item ~ ~ ~ {Tags:["ui_temp_item"],Item:{id:"minecraft:stone",Count:1}}
data modify entity @e[tag=ui_temp_item,limit=1] Item set from storage ui:temp temp.list[0]
data modify entity @e[tag=ui_temp_item,limit=1] Item.Count set value 1
tag @e[tag=ui_temp_item] remove ui_temp_item

#data remove storage ui:temp temp.list[0]
