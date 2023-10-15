#

#
execute if score $is ui_temp matches 1 run particle portal ~ ~ ~ 0.1 0.1 0.1 1 50 force
execute if score $is ui_temp matches 1 run particle dust 1 0 1 0.8 ~ ~ ~ 0.8 0.8 0.8 0 15 force

execute if score $is ui_temp matches 1 run playsound minecraft:block.portal.trigger player @a ~ ~ ~ 0.5 2 0

#
execute if score $is ui_temp matches 1.. run kill @s