#
execute if score $is ui_temp matches ..20 run particle minecraft:bubble ~ ~ ~ 1 1 1 0 30 force
execute if score $is ui_temp matches ..20 run playsound minecraft:block.bubble_column.upwards_inside player @p ~ ~ ~ 1 1 0
execute if score $is ui_temp matches 28.. run particle minecraft:block water ~ ~ ~ 1 1 1 0 100 force
execute if score $is ui_temp matches 28.. run playsound minecraft:entity.player.splash.high_speed player @p ~ ~ ~ 1 0.5 0

#
execute if score $is ui_temp matches 28.. run kill @s