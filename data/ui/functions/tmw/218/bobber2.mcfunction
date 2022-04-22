#=======================================================================================

execute if block ~ ~-0.1 ~ water run scoreboard players add @s ui_is 1
execute if block ~ ~-0.1 ~ water run scoreboard players add @s ui_is2 1
execute if block ~ ~-0.1 ~ water run scoreboard players set @s[scores={ui_is2=5..}] ui_is2 1
execute at @s[scores={ui_is=..19}] run particle crit ~ ~ ~ 0 1 0 1 0
execute at @s[scores={ui_is=20}] run particle crit ~ ~ ~ 0 0 0 2 20
execute at @s[scores={ui_is=20}] run particle end_rod ~ ~ ~ 0 0 0 0.5 10
execute at @s[scores={ui_is=21..}] run particle crit ~ ~ ~ 0 0 0 1 2
execute at @s[scores={ui_is=101..}] run particle large_smoke ~ ~ ~ 0 0 0 0.1 1
execute at @s[scores={ui_is=..19}] run playsound block.note_block.hat player @a ~ ~ ~ 1 1
execute at @s[scores={ui_is=20}] run playsound block.note_block.chime player @a ~ ~ ~ 1 2
execute at @s[scores={ui_is=21..99}] run playsound block.note_block.hat player @a ~ ~ ~ 1 1.5
execute at @s[scores={ui_is=101..160}] run playsound entity.zombie.attack_wooden_door player @a ~ ~ ~ 0.5 2
execute at @s[scores={ui_is=161..}] run playsound entity.zombie.attack_wooden_door player @a ~ ~ ~ 0.3 2

execute at @s[scores={ui_is=21..,ui_is2=1}] run loot spawn ~ ~ ~ loot minecraft:gameplay/fishing
execute at @s[scores={ui_is=101..,ui_is2=3}] run loot spawn ~ ~ ~ loot minecraft:gameplay/fishing
execute at @s[scores={ui_is=21..}] as @e[type=item,distance=..3] run tp @s @p[scores={ui_tmw_id=218}]

#=======================================================================================
