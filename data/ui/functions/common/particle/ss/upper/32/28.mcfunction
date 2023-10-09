#

#
execute if score $is ui_temp matches 1 run playsound entity.blaze.hurt player @a ~ ~ ~ 1 2 0
execute if score $is ui_temp matches 1 run playsound entity.zombie.attack_wooden_door player @a ~ ~ ~ 1 2 0
execute if score $is ui_temp matches 1 run playsound block.wooden_door.close player @a ~ ~ ~ 1 2 0

#
execute if score $is ui_temp matches 1.. run kill @s