#
particle minecraft:block water ~ ~ ~ 0.5 0.5 0.5 0 30 force
playsound minecraft:entity.player.splash.high_speed master @p ~ ~ ~ 1 1 0

#
execute if score $is ui_temp matches 0.. run kill @s