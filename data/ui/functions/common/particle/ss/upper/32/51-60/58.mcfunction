#
particle minecraft:block water ~ ~2 ~ 0.5 0.5 0.5 0 1 force
execute if score $is ui_temp matches 1 run playsound weather.rain.above player @p ~ ~ ~ 1 1 0

#
execute if score $is ui_temp matches 20.. run kill @s