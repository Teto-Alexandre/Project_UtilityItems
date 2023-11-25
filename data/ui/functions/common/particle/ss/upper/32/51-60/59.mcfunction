#
particle minecraft:block_marker water ~ ~ ~ 1 1 1 0 10 force
particle minecraft:block water ~ ~ ~ 1 1 1 0 50 force
playsound minecraft:entity.player.splash.high_speed master @p ~ ~ ~ 1 0.75 0

#
execute if score $is ui_temp matches 0.. run kill @s