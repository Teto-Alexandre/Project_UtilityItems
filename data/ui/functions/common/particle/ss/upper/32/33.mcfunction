#

#
execute if score $is ui_temp matches 1 run playsound entity.generic.explode player @a ~ ~ ~ 4 2 0
execute if score $is ui_temp matches 1 run playsound entity.firework_rocket.large_blast player @a ~ ~ ~ 5 1.5 0
execute if score $is ui_temp matches 1 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.5 0.5 0
execute if score $is ui_temp matches 1 run playsound entity.firework_rocket.blast player @a ~ ~ ~ 1.5 0.6 0
execute if score $is ui_temp matches 1 run playsound item.shield.break player @a ~ ~ ~ 2 1.5 0
execute if score $is ui_temp matches 1 run playsound entity.blaze.hurt player @a ~ ~ ~ 3 0.7 0

#
execute if score $is ui_temp matches 1.. run kill @s