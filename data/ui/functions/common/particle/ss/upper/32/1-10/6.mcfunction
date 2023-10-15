#

#
particle smoke ~ ~ ~ 0 0 0 0.1 15 force
particle dust 3 0 0 1 ~ ~ ~ 0.5 0.5 0.5 0 15 force
particle block nether_wart ~ ~ ~ 0.5 0.5 0.5 0 15 force

#
playsound minecraft:entity.player.hurt_freeze player @a ~ ~ ~ 1 0.8 0

#
execute if score $is ui_temp matches 1.. run kill @s