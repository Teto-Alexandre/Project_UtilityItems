#=======================================================================================================

execute unless entity @e[scores={ui_tmw_id2=208},distance=..3] run scoreboard players add @s ui_tc 1

particle end_rod ~ ~ ~ 0.2 0.1 0.2 0.1 1 force
execute at @e[type=!#ui:notmob,type=!boat,distance=..2] unless score @e[sort=nearest,limit=1] ui_tmw_id2 matches 208 run tag @s add tmw_208_2
execute if entity @s[scores={ui_tc=20..}] run tag @s add tmw_208_2

execute at @e[tag=tmw_208_2] run effect give @e[distance=..2,type=!#ui:undead] instant_damage 1 1
execute at @e[tag=tmw_208_2] run effect give @e[distance=..2,type=#ui:undead] instant_health 1 1
execute at @e[tag=tmw_208_2] run playsound item.totem.use player @a ~ ~ ~ 0.8 2 0
execute at @e[tag=tmw_208_2] run particle totem_of_undying ~ ~ ~ 0.3 0.3 0.3 0.3 20 force
execute at @e[tag=tmw_208_2] run kill @s

#=======================================================================================================
