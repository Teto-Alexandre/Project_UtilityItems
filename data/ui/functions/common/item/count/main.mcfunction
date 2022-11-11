#必須入力値
# data merge storage ui:common {input:{Num:10,Mode:"count",Item:{id:"minecraft:cobblestone",Count:1b}}}

# calc
execute if data storage ui:common input{Text:"add"} run function ui:common/item/count/add
execute unless data storage ui:common input{Text:"add"} store result storage ui:common input.Item.Count byte 1 run scoreboard players get $num ui_temp

# 0以下なら正常化
execute store result score $common ui_temp run data get storage ui:common input.Item.Count 1
execute if score $common ui_temp matches ..0 run data modify storage ui:common input.Item set value {id:"minecraft:air",Count:1b}
execute if score $common ui_temp matches 65.. run data modify storage ui:common input.Item.Count set value {Count:64b}
