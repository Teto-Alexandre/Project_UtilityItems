#=======================================================================================================

teleport @s ~ ~ ~ ~4 ~
execute at @s[scores={ui_tc=..50}] positioned ^ ^ ^4 run particle minecraft:flame ~ ~ ~ 0 0.6 0 0.1 0
execute at @s[scores={ui_tc=..50}] positioned ^ ^ ^-4 run particle minecraft:flame ~ ~ ~ 0 0.6 0 0.1 0
execute at @s[scores={ui_tc=..50}] run particle minecraft:flame ~ ~0.1 ~ 1.8 0 1.8 0 4

execute at @s[scores={ui_tc=20}] run effect give @e[distance=..4] minecraft:wither 1 1 true
execute at @s[scores={ui_tc=40}] run effect give @e[distance=..4] minecraft:wither 1 1 true
execute at @s[scores={ui_tc=60}] run effect give @e[distance=..4] minecraft:wither 1 1 true

execute at @s[scores={ui_tc=60}] run effect give @e[distance=..4,type=!#ui:undead] minecraft:instant_damage 1 1 true
execute at @s[scores={ui_tc=60}] run effect give @e[distance=..4,type=#ui:undead] minecraft:instant_health 1 1 true
execute at @s[scores={ui_tc=60}] run scoreboard players add @e[distance=..4] ui_hp 2
execute at @s[scores={ui_tc=60}] run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1
execute at @s[scores={ui_tc=60}] run particle minecraft:lava ~ ~ ~ 0 0 0 0 10
execute at @s[scores={ui_tc=60}] run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1 0
scoreboard players add @s ui_tc 1
kill @s[scores={ui_tc=61..}]

#=======================================================================================================
