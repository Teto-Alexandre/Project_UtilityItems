#

#
particle minecraft:lava ~ ~ ~ 0 0 0 1 10 force
particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.1 15 force
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.5 0

#

#
execute if score $is ui_temp matches 1.. run kill @s