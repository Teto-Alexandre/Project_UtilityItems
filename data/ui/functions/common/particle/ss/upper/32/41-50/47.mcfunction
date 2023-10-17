#

#
particle electric_spark ~ ~ ~ 0.3 0.3 0.3 1 4 force
particle dust 1 0 1 1 ~ ~ ~ 0.5 0.5 0.5 1 2 force

#
execute if score $is ui_temp matches 1 run playsound entity.firework_rocket.twinkle player @a ~ ~ ~ 1 1.5 0
execute if score $is ui_temp matches 5 run playsound entity.firework_rocket.twinkle player @a ~ ~ ~ 1 1.5 0
execute if score $is ui_temp matches 9 run playsound entity.firework_rocket.twinkle player @a ~ ~ ~ 1 1.5 0
execute if score $is ui_temp matches 13 run playsound entity.firework_rocket.twinkle player @a ~ ~ ~ 1 1.5 0

#
execute if score $is ui_temp matches 13.. run kill @s