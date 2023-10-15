#

#
particle flame ~ ~ ~ 0.3 0.3 0.3 0.1 1 force
particle dust 1 0.5 0 1 ~ ~ ~ 0.5 0.5 0.5 1 2 force
execute if score $is ui_temp matches 4 run particle lava ~ ~ ~ 0.4 0.4 0.4 0.1 5 force

#
execute if score $is ui_temp matches 3 run playsound entity.player.hurt_on_fire player @a ~ ~ ~ 1 1 0

#
execute if score $is ui_temp matches 5.. run kill @s