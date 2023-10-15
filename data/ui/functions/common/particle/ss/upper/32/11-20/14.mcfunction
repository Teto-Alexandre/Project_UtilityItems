#

#
particle dust 0 1 0 1 ~ ~ ~ 0.5 0.5 0.5 0 10 force
particle dust 1 1 1 1 ~ ~ ~ 0.5 0.5 0.5 0 10 force

playsound entity.chicken.egg player @a ~ ~ ~ 1 1.8 0

#
execute if score $is ui_temp matches 1.. run kill @s