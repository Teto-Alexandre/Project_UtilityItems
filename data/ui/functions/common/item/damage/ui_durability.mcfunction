#必須入力値
# data merge storage ui:common {input:{Num:10,Mode:"give",Item:{id:"minecraft:cobblestone",Count:1b}}}

# calc
    execute store result score $durability ui_temp run data get storage ui:common input.Item.tag.tmw.Durability
    execute store result score $durability.max ui_temp run data get storage ui:common input.Item.tag.tmw.DurabilityMax
    scoreboard players operation $durability ui_temp += $num ui_temp
    scoreboard players operation $durability ui_temp > #0 ui_num
    execute store result storage ui:common input.Item.tag.tmw.Durability int 1 run scoreboard players get $durability ui_temp

# 壊れる
    execute if score $durability ui_temp >= $durability.max ui_temp run data modify storage ui:common input.Item set value {id:"minecraft:air",Count:1b}
    execute if score $durability ui_temp >= $durability.max ui_temp run playsound entity.item.break neutral @a ~ ~ ~ 1 1
