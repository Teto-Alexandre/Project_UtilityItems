#particle end_rod ~ ~ ~ 0 0 0 0 1 force
particle dust 0.5 1 1 2 ~ ~ ~ 0 0 0 0 1 force
scoreboard players remove $count ui_temp 1
execute if score $count ui_temp matches 1.. positioned ^ ^ ^1 if block ~ ~ ~ #ui:nocol unless entity @e[predicate=ui:load_unhurtable,distance=..1.5] run function ui:common/particle/ss/upper/7/2
execute positioned ^ ^ ^1 if entity @e[predicate=ui:load_unhurtable,distance=..2] run function ui:common/particle/ss/upper/7/hit
execute if score $count ui_temp matches 0.. run function ui:common/particle/ss/upper/7/3