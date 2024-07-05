# 発動失敗
execute if entity @s[type=player] run playsound minecraft:block.dispenser.fail player @a ~ ~ ~ 1 2 0

#
execute if entity @s[type=player] run data merge storage ui:common {input:{Mode:"give",Num:1,Item:{id:"minecraft:cobblestone",Count:1b}}}
execute if entity @s[type=player] run data modify storage ui:common input.Item set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.UsedItems[0]
execute if entity @s[type=player] at @s run function ui:common/item

#
execute if entity @s[type=!player] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.hand append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.UsedItems[0]