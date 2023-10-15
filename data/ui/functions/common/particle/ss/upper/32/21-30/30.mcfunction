#

#
execute if score $is ui_temp matches 1 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.5 0.8 0
execute if score $is ui_temp matches 1 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.5 1 0
execute if score $is ui_temp matches 1 run playsound entity.blaze.hurt player @a ~ ~ ~ 2 2 0

#
execute if score $is ui_temp matches 1.. run kill @s