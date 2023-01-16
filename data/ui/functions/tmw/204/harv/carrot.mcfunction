execute positioned ~1 ~ ~ if block ~ ~ ~ carrots unless entity @e[distance=..0.5,tag=ui_H] run summon minecraft:marker ~ ~ ~ {Tags:["ui_H","ui_H_2"]}
execute positioned ~-1 ~ ~ if block ~ ~ ~ carrots unless entity @e[distance=..0.5,tag=ui_H] run summon minecraft:marker ~ ~ ~ {Tags:["ui_H","ui_H_2"]}
execute positioned ~ ~ ~1 if block ~ ~ ~ carrots unless entity @e[distance=..0.5,tag=ui_H] run summon minecraft:marker ~ ~ ~ {Tags:["ui_H","ui_H_2"]}
execute positioned ~ ~ ~-1 if block ~ ~ ~ carrots unless entity @e[distance=..0.5,tag=ui_H] run summon minecraft:marker ~ ~ ~ {Tags:["ui_H","ui_H_2"]}

execute if block ~ ~ ~ carrots[age=7] run setblock ~ ~ ~ carrots[age=0] destroy

tag @s remove ui_H_2

execute as @e[tag=ui_H_2] at @s run function ui:tmw/204/harv/carrot