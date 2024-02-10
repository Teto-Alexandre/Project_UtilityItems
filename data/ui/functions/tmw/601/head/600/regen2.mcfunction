scoreboard players operation @s ui_tmw601_4600_mp += @s ui_tmw601_4600_mpregen2
scoreboard players operation @s ui_tmw601_4600_mp < @s ui_tmw601_4600_mpmax2

execute if predicate ui:percentage/10 run playsound entity.firework_rocket.twinkle player @a ~ ~ ~ 1 1.5 0
execute if predicate ui:percentage/10 run particle electric_spark ~ ~ ~ 0.3 0.3 0.3 1 4 force
execute if predicate ui:percentage/10 run particle dust 1 0 1 1 ~ ~ ~ 0.5 0.5 0.5 1 2 force