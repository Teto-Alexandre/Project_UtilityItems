#

#
particle flash ~ ~ ~ 0 0 0 0 2 force
particle dust 1 1 1 0.8 ~ ~ ~ 0.5 0.5 0.5 0 30 force

#
execute if score $is ui_temp matches 1 run playsound entity.zombie.attack_iron_door player @a ~ ~ ~ 1 0.8 0

#
execute if score $is ui_temp matches 1.. run kill @s