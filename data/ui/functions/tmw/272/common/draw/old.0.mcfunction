data modify storage ui:temp temp.list2 set from storage ui:temp temp.list

scoreboard players operation $mod ui_calc1 = $cg1_list_count ui_temp
function ui:common/rand

execute if score $rand ui_calc1 matches 1.. run function ui:tmw/272/common/draw/burn

summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b,tag:{}},Tags:["tmw272_temp_item","tmw272_dropitem_card"]}
data modify entity @e[tag=tmw272_temp_item,limit=1] Item set from storage ui:temp temp.list2[0]
data modify entity @e[tag=tmw272_temp_item,limit=1] Item.tag.StackUUID set from entity @e[tag=tmw272_temp_item,limit=1] UUID
data modify entity @e[tag=tmw272_temp_item,limit=1] Item.tag.IsCG1 set value 1

tag @e[tag=tmw272_temp_item] remove tmw272_temp_item

scoreboard players remove $cg1_common_draw_num ui_temp 1
execute if score $cg1_common_draw_num ui_temp matches 1.. run function ui:tmw/272/common/draw/0