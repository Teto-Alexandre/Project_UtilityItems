#

#
execute if score $is ui_temp matches ..21 run particle sweep_attack ~ ~0.5 ~ 1 1 1 1 3 force
execute if score $is ui_temp matches ..21 run particle dust 0 1 0 1 ~ ~0.5 ~ 1.1 1.1 1.1 1 3 force
execute if score $is ui_temp matches ..21 run particle cloud ~ ~0.5 ~ 1 1 1 0.3 3 force
execute if score $is ui_temp matches 26 run particle firework ~ ~0.5 ~ 1 1 1 0.3 30 force
execute if score $is ui_temp matches 26 run particle cloud ~ ~0.5 ~ 1 1 1 0.3 30 force
execute if score $is ui_temp matches 28 run particle cloud ~ ~0.5 ~ 1 1 1 0.3 30 force

#
execute if score $is ui_temp matches ..21 run playsound entity.player.attack.sweep player @a ~ ~ ~ 1 2 0
execute if score $is ui_temp matches 26 run playsound entity.wither.spawn player @a ~ ~ ~ 1 1 0

#
execute if score $is ui_temp matches 28.. run kill @s
