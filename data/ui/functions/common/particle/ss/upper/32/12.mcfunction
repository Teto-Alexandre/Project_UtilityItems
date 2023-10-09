#

#
particle dust 3 0 3 1.5 ~ ~ ~ 0.6 0.6 0.6 0.1 20 force
particle dust 0 0 0 1 ~ ~ ~ 0.6 0.6 0.6 0.1 10 force

#
playsound entity.elder_guardian.death player @a ~ ~ ~ 1 2 0

#
execute if score $is ui_temp matches 1.. run kill @s