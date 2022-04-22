#設置者に可視化
execute if score @p ui_id = @s ui_id run particle smoke ~ ~1 ~ 0.5 0.5 0.5 0.02 1 force @p

#チェストが開いた検知
execute if entity @a[scores={ui_openc=1..},distance=..15] run tag @s add ui_13_2

#消滅
execute if entity @s[tag=ui_13_2] run playsound ambient.cave block @a ~ ~ ~ 0.8 0.8 0
execute if entity @s[tag=ui_13_2] run particle block coal_block ~ ~ ~ 0.7 0.7 0.7 0 15
execute if entity @s[tag=ui_13_2] run particle block redstone_block ~ ~ ~ 0.7 0.7 0.7 0 15
execute if entity @s[tag=ui_13_2] run particle dust 3 0 0 1 ~ ~ ~ 0.7 0.7 0.7 0 15
execute if entity @s[tag=ui_13_2] at @a[scores={ui_openc=1..},limit=1] run summon zombie ~ ~3 ~ {Tags:["ui_13_3"],DeathLootTable:"none"}
execute if entity @s[tag=ui_13_2] at @a[scores={ui_openc=1..},limit=1] run summon zombie ~-3 ~ ~ {Tags:["ui_13_3"],DeathLootTable:"none"}
execute if entity @s[tag=ui_13_2] at @a[scores={ui_openc=1..},limit=1] run summon zombie ~3 ~ ~ {Tags:["ui_13_3"],DeathLootTable:"none"}
execute if entity @s[tag=ui_13_2] at @a[scores={ui_openc=1..},limit=1] run summon zombie ~ ~ ~-3 {Tags:["ui_13_3"],DeathLootTable:"none"}
execute if entity @s[tag=ui_13_2] at @a[scores={ui_openc=1..},limit=1] run summon zombie ~ ~ ~3 {Tags:["ui_13_3"],DeathLootTable:"none"}
execute if entity @s[tag=ui_13_2] run kill @s

scoreboard players reset @a[scores={ui_openc=1..}] ui_openc
