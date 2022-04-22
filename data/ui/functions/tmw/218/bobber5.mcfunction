#=======================================================================================

execute at @s[scores={ui_is=2..}] positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 unless entity @e[dx=0,type=!#ui:unhurtable,tag=!ui_unhurtable] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 unless entity @e[dx=0,type=!#ui:unhurtable,tag=!ui_unhurtable] at @s run scoreboard players set @s ui_is 6

execute at @s[scores={ui_is=6}] run particle crit ~ ~ ~ 0 0 0 0.5 10
execute at @s[scores={ui_is=6}] run playsound entity.experience_orb.pickup player @a ~ ~ ~ 1 2
kill @s[scores={ui_is=6}]

execute positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,type=!#ui:unhurtable,tag=!ui_unhurtable] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,type=!#ui:unhurtable,tag=!ui_unhurtable] at @s run scoreboard players add @s ui_is 1
scoreboard players set @s[scores={ui_is=5}] ui_is 2

execute at @s[scores={ui_is=1}] run particle crit ~ ~ ~ 0 1 0 1 0
execute at @s[scores={ui_is=2}] run particle angry_villager ~ ~ ~ 0.2 0.2 0.2 0 1

execute at @s[scores={ui_is=1..}] run playsound block.note_block.hat player @a ~ ~ ~ 1 2

execute at @s[scores={ui_is=2}] as @e[type=!#ui:unhurtable,tag=!ui_unhurtable,sort=nearest,limit=1] at @s run function ui:tmw/218/hit

#=======================================================================================
