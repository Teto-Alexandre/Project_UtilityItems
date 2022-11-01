#必須入力値
# data merge storage ui:common {input:{Num:10,Mode:"give",Item:{id:"minecraft:cobblestone",Count:1b}}}

# calc
execute store result score $damage ui_temp run data get storage ui:common input.Item.tag.Damage
scoreboard players operation $damage ui_temp -= $num ui_temp
scoreboard players operation $damage ui_temp > #0 ui_num
execute store result storage ui:common input.Item.tag.Damage int 1 run scoreboard players get $damage ui_temp