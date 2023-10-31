summon item ~ ~ ~ {Tags:["ui_temp_item"],Item:{id:"minecraft:stone",Count:1}}
data modify entity @e[tag=ui_temp_item,limit=1] Item set from storage ui:temp temp.list[0]
tag @e[tag=ui_temp_item] remove ui_temp_item

data remove storage ui:temp temp.list[0]
scoreboard players remove $count_list ui_temp 1
execute if score $count_list ui_temp matches 1.. run function ui:tmw/272/oh/2/open3
