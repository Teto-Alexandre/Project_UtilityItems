# クリックでTP
execute if entity @s[scores={ui_use1=1..}] run scoreboard players set $temp ui_temp 0
execute as @s[scores={ui_use1=1..,ui_st=0}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~-1 ~ minecraft:diamond_block rotated ~ -90 positioned ~ ~1 ~ run function ui:tmw/231/laser
execute as @s[scores={ui_use1=1..,ui_st=1..}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~-1 ~ minecraft:diamond_block rotated ~ 90 positioned ~ ~-1 ~ run function ui:tmw/231/laser
execute at @e[tag=ui_temp_marker,limit=1] rotated as @s run teleport @s ~ ~ ~ ~ ~
execute at @e[tag=ui_temp_marker,limit=1] run playsound entity.enderman.teleport player @a ~ ~ ~ 1 0.8 0
kill @e[tag=ui_temp_marker]