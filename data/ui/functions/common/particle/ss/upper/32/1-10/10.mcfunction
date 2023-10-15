#

#
particle sweep_attack ~ ~ ~ 0.5 0.5 0.5 1 1 force
particle dust 0 1 0 1 ~ ~ ~ 0.6 0.6 0.6 1 2 force
execute if score $is ui_temp matches 7 run particle cloud ~ ~ ~ 0.5 0.5 0.5 0.1 15 force

#
execute if score $is ui_temp matches 1 run playsound entity.player.attack.sweep player @a ~ ~ ~ 1 2 0
execute if score $is ui_temp matches 7 run playsound entity.wither.shoot player @a ~ ~ ~ 1 0.5 0

#
execute if score $is ui_temp matches 9.. run kill @s