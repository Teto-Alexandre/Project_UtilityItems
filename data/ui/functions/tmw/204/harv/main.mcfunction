execute positioned ~1 ~ ~ if block ~ ~ ~ #ui:harv unless entity @e[distance=..0.5,tag=ui_H] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_H","ui_H_2"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~ ~ if block ~ ~ ~ #ui:harv unless entity @e[distance=..0.5,tag=ui_H] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_H","ui_H_2"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~1 if block ~ ~ ~ #ui:harv unless entity @e[distance=..0.5,tag=ui_H] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_H","ui_H_2"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~-1 if block ~ ~ ~ #ui:harv unless entity @e[distance=..0.5,tag=ui_H] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_H","ui_H_2"],NoGravity:1b,Marker:1b,Invisible:1b}

execute if block ~ ~ ~ wheat[age=7] run setblock ~ ~ ~ wheat[age=0] destroy
execute if block ~ ~ ~ carrots[age=7] run setblock ~ ~ ~ carrots[age=0] destroy
execute if block ~ ~ ~ potatoes[age=7] run setblock ~ ~ ~ potatoes[age=0] destroy
execute if block ~ ~ ~ beetroots[age=3] run setblock ~ ~ ~ beetroots[age=0] destroy

tag @s remove ui_H_2

execute as @e[type=armor_stand,tag=ui_H_2] at @s run function ui:tmw/204/harv/main