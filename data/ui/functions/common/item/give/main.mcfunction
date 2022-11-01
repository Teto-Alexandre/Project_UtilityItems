#必須入力値
# data merge storage ui:common {input:{Num:10,Mode:"give",Item:{id:"minecraft:cobblestone",Count:1b}}}

# calc
summon item ~ ~ ~ {Tags:["ui_c_give_item"],Item:{id:"minecraft:stone",Count:1b},PickupDelay:0s}
data modify entity @e[tag=ui_c_give_item,limit=1] Item set from storage ui:common input.Item
execute if score $num ui_temp matches 1..127 store result entity @e[tag=ui_c_give_item,limit=1] Item.Count byte 1 run scoreboard players get $num ui_temp
kill @e[tag=ui_c_give_item,nbt={Item:{id:"minecraft:stone",Count:1b}}]
tag @e[tag=ui_c_give_item] remove ui_c_give_item
