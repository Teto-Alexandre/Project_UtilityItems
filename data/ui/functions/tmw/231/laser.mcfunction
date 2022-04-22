#=======================================================================================================

scoreboard players add $temp ui_temp 1

execute if block ~ ~-1 ~ minecraft:diamond_block if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run summon marker ~ ~ ~ {Tags:["ui_temp_marker"]}
execute if block ~ ~-1 ~ minecraft:diamond_block if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run scoreboard players set $temp ui_temp 100

execute if score $temp ui_temp matches 1..99 positioned ^ ^ ^1 run function ui:tmw/231/laser

#=======================================================================================================