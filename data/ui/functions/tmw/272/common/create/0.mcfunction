execute if entity @s[type=player] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b,tag:{}},Tags:["tmw272_temp_item","tmw272_dropitem_card"]}
execute if entity @s[type=player] run data modify entity @e[tag=tmw272_temp_item,limit=1] Item.id set from storage ui:cg1 temp.list[0].id
execute if entity @s[type=player] run data modify entity @e[tag=tmw272_temp_item,limit=1] Item.tag set from storage ui:cg1 temp.list[0].tag
execute if entity @s[type=player] run data modify entity @e[tag=tmw272_temp_item,limit=1] Item.tag.StackUUID set from entity @e[tag=tmw272_temp_item,limit=1] UUID
execute if entity @s[type=player] run data modify entity @e[tag=tmw272_temp_item,limit=1] Item.tag.IsCG1 set value 1

execute if entity @s[type=!player] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand append from storage ui:cg1 temp.list[0]

kill @e[tag=tmw272_temp_item,nbt=!{Item:{tag:{tmw:{id:272}}}}]
tag @e[tag=tmw272_temp_item] remove tmw272_temp_item

data remove storage ui:cg1 temp.list[0]

# カードプールがなくなったらボックスから補充を行う
execute store result score $cg1_list_count ui_temp run data get storage ui:cg1 temp.list
#execute if score $cg1_list_count ui_temp matches 0 run say エラー：特殊ボックスの内容が枯渇しました

scoreboard players remove $cg1_common_draw_num ui_temp 1
execute if score $cg1_common_draw_num ui_temp matches 1.. run function ui:tmw/272/common/create/0