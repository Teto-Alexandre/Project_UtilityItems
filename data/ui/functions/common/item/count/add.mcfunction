#必須入力値
# data merge storage ui:common {input:{Num:10,Mode:"count",Item:{id:"minecraft:cobblestone",Count:1b}}}

# calc
execute store result score $common ui_temp run data get storage ui:common input.Item.Count
scoreboard players operation $num ui_temp += $common ui_temp
execute store result storage ui:common input.Item.Count byte 1 run scoreboard players get $num ui_temp
