execute unless score @s ui_is2 matches 1..4 run particle dust 1 1 1 1.5 ~ ~ ~ 0 0 0 0 1 force
execute if score @s ui_is2 matches 1 run particle dust 0 1 1 1.5 ~ ~ ~ 0 0 0 0 1 force
execute if score @s ui_is2 matches 2 run particle dust 1 0 1 1.5 ~ ~ ~ 0 0 0 0 1 force
execute if score @s ui_is2 matches 3 run particle dust 1 1 0 1.5 ~ ~ ~ 0 0 0 0 1 force
execute if score @s ui_is2 matches 4 run particle dust 0 1 0 1.5 ~ ~ ~ 0 0 0 0 1 force

scoreboard players remove @s ui_is3 1
execute if score @s ui_is3 matches 1.. positioned ^ ^ ^1 run function ui:common/particle/ss/upper/33/laser