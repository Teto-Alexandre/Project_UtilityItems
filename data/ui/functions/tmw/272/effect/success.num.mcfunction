execute store result score $num_consume ui_temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.UsedItems[0].tag.tmw.cg.num_consume
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.UsedItems[0].tag.tmw.cg.num_consume int 1 run scoreboard players remove $num_consume ui_temp 1

tellraw @s ["",{"text":"    "},{"text":"残り使用回数: ","color": "gray"},{"score":{"name": "$num_consume","objective": "ui_temp"}}]

# numがあるなら返却
execute if score $num_consume ui_temp matches 1.. if entity @s[type=player] run data merge storage ui:common {input:{Mode:"give",Num:1,Item:{id:"minecraft:cobblestone",Count:1b}}}
execute if score $num_consume ui_temp matches 1.. if entity @s[type=player] run data modify storage ui:common input.Item set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.UsedItems[0]
execute if score $num_consume ui_temp matches 1.. if entity @s[type=player] at @s run function ui:common/item
execute if score $num_consume ui_temp matches 1.. if entity @s[type=!player] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.UsedItems[0]

scoreboard players reset $num_consume ui_temp