#=======================================================================================================

scoreboard players add @s ui_tc 1

tag @s[scores={ui_tc=4}] add tmw_6_2
execute at @s[scores={ui_tc=1}] run playsound minecraft:entity.minecart.inside master @a ~ ~ ~ 0.3 2 0

execute positioned ~ ~0 ~ as @e[type=!#ui:notmob,type=!#ui:undead] unless entity @s[scores={ui_tmw_id=6}] run effect give @s[distance=..2.5] minecraft:instant_damage 1 1 true
execute positioned ~ ~2 ~ as @e[type=!#ui:notmob,type=!#ui:undead] unless entity @s[scores={ui_tmw_id=6}] run effect give @s[distance=..2.5] minecraft:instant_damage 1 1 true
execute positioned ~ ~4 ~ as @e[type=!#ui:notmob,type=!#ui:undead] unless entity @s[scores={ui_tmw_id=6}] run effect give @s[distance=..2.5] minecraft:instant_damage 1 1 true
execute positioned ~ ~6 ~ as @e[type=!#ui:notmob,type=!#ui:undead] unless entity @s[scores={ui_tmw_id=6}] run effect give @s[distance=..2.5] minecraft:instant_damage 1 1 true
execute positioned ~ ~0 ~ as @e[type=#ui:undead] unless entity @s[scores={ui_tmw_id=6}] run effect give @s[distance=..2.5] minecraft:instant_health 1 1 true
execute positioned ~ ~2 ~ as @e[type=#ui:undead] unless entity @s[scores={ui_tmw_id=6}] run effect give @s[distance=..2.5] minecraft:instant_health 1 1 true
execute positioned ~ ~4 ~ as @e[type=#ui:undead] unless entity @s[scores={ui_tmw_id=6}] run effect give @s[distance=..2.5] minecraft:instant_health 1 1 true
execute positioned ~ ~6 ~ as @e[type=#ui:undead] unless entity @s[scores={ui_tmw_id=6}] run effect give @s[distance=..2.5] minecraft:instant_health 1 1 true
particle minecraft:sweep_attack ~ ~4 ~ 1 4 1 1 10 force
particle minecraft:dust 0.5 1 0.6 1.5 ~ ~4 ~ 2 5 2 0 5 force

teleport @s ^ ^ ^1 ~ 0

kill @s[scores={ui_tc=50..}]

#=======================================================================================================
