#
execute at @s positioned ^ ^ ^0.6 run particle dust 0.4 1 0.4 3 ~ ~2 ~ 0 2 0 0 60 force @a
execute at @s positioned ^ ^ ^0.6 run particle dust 0.4 1 0.4 1.5 ~ ~3.5 ~ 0.4 3.5 0.4 0 200 force @a
execute at @s positioned ^ ^ ^0.6 run particle explosion ~ ~0.2 ~ 0 0 0 0 1 force @a
kill @s
playsound entity.generic.explode player @a ~ ~ ~ 2 0.5
playsound entity.wither.shoot player @a ~ ~ ~ 1 1

function ui:common/particle/ss/downer/10017/area

particle dust 0.4 1 0.4 1.8 ~ ~ ~ 5 0 5 0 150 force @a

execute as @e[distance=..4,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10017/damage2
execute as @e[distance=4..13,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10017/damage