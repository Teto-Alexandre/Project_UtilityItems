#=======================================================================================

execute at @s[scores={ui_is=119..}] as @e[type=item,distance=..5] run tp @s @p[scores={ui_tmw_id=218}]
kill @s[scores={ui_is=119..}]

execute positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,type=!#ui:unhurtable,tag=!ui_unhurtable] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,type=!#ui:unhurtable,tag=!ui_unhurtable] at @s run scoreboard players add @s ui_is 1

execute at @s[scores={ui_is=..19}] run particle enchanted_hit ~ ~ ~ 0 1 0 1 0
execute at @s[scores={ui_is=20}] run particle enchanted_hit ~ ~ ~ 0 0 0 2 20
execute at @s[scores={ui_is=20}] run particle end_rod ~ ~ ~ 0 0 0 0.3 10
execute at @s[scores={ui_is=21..}] run particle dragon_breath ~ ~ ~ 0 0 0 0.3 2
execute at @s[scores={ui_is=100}] run particle large_smoke ~ ~ ~ 0 0 0 0.2 10
execute at @s[scores={ui_is=119}] run particle firework ~ ~ ~ 0.4 0.4 0.4 0.05 15
execute at @s[scores={ui_is=119}] run particle large_smoke ~ ~ ~ 0 0 0 0.2 15
execute at @s[scores={ui_is=1}] run playsound block.beacon.activate player @a ~ ~ ~ 2 1.5
execute at @s[scores={ui_is=21..99}] run playsound block.note_block.hat player @a ~ ~ ~ 1 0.8
execute at @s[scores={ui_is=100}] run playsound entity.zombie.attack_iron_door player @a ~ ~ ~ 1 1.5
execute at @s[scores={ui_is=119}] run playsound block.beacon.deactivate player @a ~ ~ ~ 2 1

execute at @s[scores={ui_is=119}] run loot spawn ~ ~ ~ kill @e[type=!#ui:unhurtable,tag=!ui_unhurtable,sort=nearest,limit=1]
execute at @s[scores={ui_is=119}] run kill @e[type=!#ui:unhurtable,tag=!ui_unhurtable,sort=nearest,limit=1]

#=======================================================================================
