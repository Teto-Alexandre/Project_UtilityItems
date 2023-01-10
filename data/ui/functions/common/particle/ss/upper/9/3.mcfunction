summon tnt ~ ~ ~
summon tnt ~ ~ ~
execute as @e[distance=..4,predicate=ui:load_unhurtable] at @s run function ui:common/particle/ss/upper/9/ex
particle dust 1 0 0 5 ~ ~ ~ 2 2 2 0 4 force
particle dust 1 0.5 0 5 ~ ~ ~ 2 2 2 0 4 force
scoreboard players set $count ui_temp -1