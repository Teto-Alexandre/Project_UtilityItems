
execute if entity @s[type=player] unless entity @e[tag=tmw272_temp_steal,type=!player] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b,tag:{}},Tags:["tmw272_temp_item","tmw272_dropitem_card"]}
execute if entity @s[type=player] unless entity @e[tag=tmw272_temp_steal,type=!player] run data modify entity @e[tag=tmw272_temp_item,limit=1] Item set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match[0]
execute if entity @s[type=player] unless entity @e[tag=tmw272_temp_steal,type=!player] run data modify entity @e[tag=tmw272_temp_item,limit=1] Item.tag.StackUUID set from entity @e[tag=tmw272_temp_item,limit=1] UUID
execute if entity @s[type=player] unless entity @e[tag=tmw272_temp_steal,type=!player] run data modify entity @e[tag=tmw272_temp_item,limit=1] Item.tag.IsCG1 set value 1

execute if entity @s[type=!player] if entity @e[tag=tmw272_temp_steal,type=player] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b,tag:{}},Tags:["tmw272_temp_item","tmw272_dropitem_card"]}
execute if entity @s[type=!player] if entity @e[tag=tmw272_temp_steal,type=player] run data modify entity @e[tag=tmw272_temp_item,limit=1] Item set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.list_match[0]
execute if entity @s[type=!player] if entity @e[tag=tmw272_temp_steal,type=player] run data modify entity @e[tag=tmw272_temp_item,limit=1] Item.tag.StackUUID set from entity @e[tag=tmw272_temp_item,limit=1] UUID
execute if entity @s[type=!player] if entity @e[tag=tmw272_temp_steal,type=player] run data modify entity @e[tag=tmw272_temp_item,limit=1] Item.tag.IsCG1 set value 1
