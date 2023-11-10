#

#
particle sweep_attack ~ ~3 ~ 0.5 3 0.5 1 10 force
particle dust 0 1 0 1 ~ ~3 ~ 0.6 4 0.6 1 10 force
execute if score $is ui_temp matches 1 run particle cloud ~ ~1 ~ 0.5 3 0.5 0.3 15 force
execute if score $is ui_temp matches 11 run particle cloud ~ ~1 ~ 0.5 3 0.5 0.3 15 force
execute if score $is ui_temp matches 21 run particle cloud ~ ~1 ~ 0.5 3 0.5 0.3 15 force

#
execute if score $is ui_temp matches 1 run playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.5 0
execute if score $is ui_temp matches 4 run playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.5 0
execute if score $is ui_temp matches 7 run playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.5 0
execute if score $is ui_temp matches 10 run playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.5 0
execute if score $is ui_temp matches 13 run playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.5 0
execute if score $is ui_temp matches 16 run playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.5 0
execute if score $is ui_temp matches 19 run playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.5 0
execute if score $is ui_temp matches 1 run playsound entity.wither.shoot player @a ~ ~ ~ 1 2 0
execute if score $is ui_temp matches 11 run playsound entity.wither.shoot player @a ~ ~ ~ 1 2 0
execute if score $is ui_temp matches 21 run playsound entity.wither.shoot player @a ~ ~ ~ 1 2 0
execute if score $is ui_temp matches 21 run playsound entity.wither.shoot player @a ~ ~ ~ 1 0.5 0

#
execute if score $is ui_temp matches 21.. run kill @s
