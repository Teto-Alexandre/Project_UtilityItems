#=======================================================================================================

scoreboard players add @s ui_tc 1
particle minecraft:flame ~ ~0.2 ~ 0.5 0 0 0 2 normal @a[scores={ui_tmw_id=3}]
particle minecraft:flame ~ ~0.2 ~ 0 0 0.5 0 2 normal @a[scores={ui_tmw_id=3}]
tag @s[scores={ui_tc=600..}] add tmw_3_2

execute at @s[tag=tmw_3_2] run particle minecraft:lava ~ ~ ~ 0 0 0 1 10 force
execute at @s[tag=tmw_3_2] run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.1 15 force
execute at @s[tag=tmw_3_2] run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
execute at @s[tag=tmw_3_2] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.5 0
execute at @s[tag=tmw_3_2] run effect give @e[distance=..3,type=!#ui:notmob,type=!#ui:undead] minecraft:instant_damage 1 0 true
execute at @s[tag=tmw_3_2] run effect give @e[distance=..3,type=#ui:undead] minecraft:instant_health 1 0 true
execute at @s[tag=tmw_3_2] run effect give @e[distance=..3] minecraft:slowness 1 2 true
kill @s[tag=tmw_3_2]

#=======================================================================================================
