#=======================================================================================

scoreboard players add @s ui_tc 1

teleport @s ^ ^ ^0.6

scoreboard players set $mod ui_calc1 4
function ui:rand
execute if score $rand ui_calc1 matches 0 run summon marker ~0.5 ~2 ~0.5 {Tags:["ui_temp"]}
execute if score $rand ui_calc1 matches 1 run summon marker ~-0.5 ~2 ~0.5 {Tags:["ui_temp"]}
execute if score $rand ui_calc1 matches 2 run summon marker ~0.5 ~2 ~-0.5 {Tags:["ui_temp"]}
execute if score $rand ui_calc1 matches 3 run summon marker ~-0.5 ~2 ~-0.5 {Tags:["ui_temp"]}
function ui:rand
execute at @s[scores={ui_tc=4..}] if score $rand ui_calc1 matches 0 positioned ~0.5 ~ ~0.5 facing entity @e[tag=ui_temp,limit=1] feet run function ui:tmw/102/102_2
execute at @s[scores={ui_tc=4..}] if score $rand ui_calc1 matches 1 positioned ~-0.5 ~ ~0.5 facing entity @e[tag=ui_temp,limit=1] feet run function ui:tmw/102/102_2
execute at @s[scores={ui_tc=4..}] if score $rand ui_calc1 matches 2 positioned ~0.5 ~ ~-0.5 facing entity @e[tag=ui_temp,limit=1] feet run function ui:tmw/102/102_2
execute at @s[scores={ui_tc=4..}] if score $rand ui_calc1 matches 3 positioned ~-0.5 ~ ~-0.5 facing entity @e[tag=ui_temp,limit=1] feet run function ui:tmw/102/102_2
particle dust 0.5 1 1 1 ~ ~0.1 ~ 0.5 0.1 0.5 0 3 force

tag @s remove tmw_102_1_2
execute as @s[scores={ui_tc=..69}] at @s if block ~ ~ ~ #ui:nocol run tag @s add tmw_102_1_2
execute as @s[scores={ui_tc=3..69}] at @s if entity @e[predicate=ui:load_unhurtable,distance=..1.5] run tag @s add tmw_102_1_3
execute at @s[tag=tmw_102_1_3] as @e[predicate=ui:load_unhurtable,distance=..1.5,sort=nearest,limit=1] at @s run function ui:tmw/102/102_3
tag @s[tag=tmw_102_1_3] remove tmw_102_1_2

kill @s[scores={ui_tc=70..}]
kill @s[tag=!tmw_102_1_2]

execute as @s[scores={ui_tc=..69},tag=tmw_102_1_2] at @s run function ui:tmw/102/102_1

#=======================================================================================