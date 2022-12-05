# 総当たりで装備していく

# 次の数字を取得
    execute store result score $core ui_temp run data get storage ui:temp2 temp[0]
    data remove storage ui:temp2 temp[0]

#
    execute as @e[tag=tmw_259_node] if score @s ui_obj_id = $core ui_temp run tag @s add ui_temp_obj

# 取得
    summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["ui_temp_item1","ui_temp_item"]}
    summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["ui_temp_item2","ui_temp_item"]}
    summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["ui_temp_item3","ui_temp_item"]}
    summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["ui_temp_item4","ui_temp_item"]}
    summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["ui_temp_item5","ui_temp_item"]}
    summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["ui_temp_item6","ui_temp_item"]}
    summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["ui_temp_item7","ui_temp_item"]}
    summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["ui_temp_item8","ui_temp_item"]}
    execute at @e[tag=ui_temp_obj] run data modify entity @e[tag=ui_temp_item1,limit=1] Item set from block ~ ~-1 ~ Items[1]
    execute at @e[tag=ui_temp_obj] run data modify entity @e[tag=ui_temp_item2,limit=1] Item set from block ~ ~-1 ~ Items[2]
    execute at @e[tag=ui_temp_obj] run data modify entity @e[tag=ui_temp_item3,limit=1] Item set from block ~ ~-1 ~ Items[3]
    execute at @e[tag=ui_temp_obj] run data modify entity @e[tag=ui_temp_item4,limit=1] Item set from block ~ ~-1 ~ Items[4]
    execute at @e[tag=ui_temp_obj] run data modify entity @e[tag=ui_temp_item5,limit=1] Item set from block ~ ~-1 ~ Items[5]
    execute at @e[tag=ui_temp_obj] run data modify entity @e[tag=ui_temp_item6,limit=1] Item set from block ~ ~-1 ~ Items[6]
    execute at @e[tag=ui_temp_obj] run data modify entity @e[tag=ui_temp_item7,limit=1] Item set from block ~ ~-1 ~ Items[7]
    execute at @e[tag=ui_temp_obj] run data modify entity @e[tag=ui_temp_item8,limit=1] Item set from block ~ ~-1 ~ Items[8]
    kill @e[tag=ui_temp_item,nbt={Item:{id:"minecraft:stone",Count:1b}}]

#
    tag @e[tag=ui_temp_obj] remove ui_temp_obj
    tag @e[tag=ui_temp_item] remove ui_temp_item
    tag @e[tag=ui_temp_item1] remove ui_temp_item1
    tag @e[tag=ui_temp_item2] remove ui_temp_item2
    tag @e[tag=ui_temp_item3] remove ui_temp_item3
    tag @e[tag=ui_temp_item4] remove ui_temp_item4
    tag @e[tag=ui_temp_item5] remove ui_temp_item5
    tag @e[tag=ui_temp_item6] remove ui_temp_item6
    tag @e[tag=ui_temp_item7] remove ui_temp_item7
    tag @e[tag=ui_temp_item8] remove ui_temp_item8

# 条件が残っているなら、さらに条件ごとに実行する
    execute if data storage ui:temp2 temp[0] run function ui:common/skilltree/function/liner_search