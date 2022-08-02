#キル条件
execute if score $rangetype ui_temp matches 1..2 run function ui:tmw/237/projectile/kill
execute if score $rangetype ui_temp matches 3..4 run scoreboard players set @s ui_bcp 5
execute if score $rangetype ui_temp matches 3..4 at @s run teleport @s ~ ~ ~ ~ 90
execute if score $rangetype ui_temp matches 5 run kill @s