#
particle minecraft:block water ~ ~ ~ 1 1 1 0 50 force
playsound minecraft:entity.player.splash.high_speed player @p ~ ~ ~ 1 0.75 0

#
execute if score $is ui_temp matches 0.. run kill @s