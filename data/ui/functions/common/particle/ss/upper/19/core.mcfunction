#
execute if score $is ui_temp matches 1 run playsound entity.wither.shoot player @a ~ ~ ~ 0.4 2
particle dust 0.4 1 0.4 0.8 ~ ~ ~ 0.1 0.1 0.1 0 1 force @a
particle dust 0.4 1 0.4 0.8 ^ ^ ^-0.6 0.1 0.1 0.1 0 1 force @a

#
execute if score $is ui_temp >= @s ui_is2 run kill @s