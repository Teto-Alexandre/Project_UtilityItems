#

#
playsound entity.enderman.teleport player @a ~ ~ ~ 1 0.8 0
particle witch ~ ~1 ~ 0 0.5 0 0.1 15 force

#
execute if score $is ui_temp matches 1.. run kill @s