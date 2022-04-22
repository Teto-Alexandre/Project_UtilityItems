execute positioned ~1 ~ ~ if block ~ ~ ~ #ui:diamonds unless entity @e[distance=..0.5,tag=ui_M_diamond] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_diamond"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~ ~ if block ~ ~ ~ #ui:diamonds unless entity @e[distance=..0.5,tag=ui_M_diamond] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_diamond"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~1 if block ~ ~ ~ #ui:diamonds unless entity @e[distance=..0.5,tag=ui_M_diamond] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_diamond"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~-1 if block ~ ~ ~ #ui:diamonds unless entity @e[distance=..0.5,tag=ui_M_diamond] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_diamond"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~ if block ~ ~ ~ #ui:diamonds unless entity @e[distance=..0.5,tag=ui_M_diamond] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_diamond"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~-1 ~ if block ~ ~ ~ #ui:diamonds unless entity @e[distance=..0.5,tag=ui_M_diamond] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_diamond"],NoGravity:1b,Marker:1b,Invisible:1b}

execute if block ~ ~ ~ #ui:diamonds run setblock ~ ~ ~ air destroy
execute unless block ~ ~ ~ #ui:diamonds run kill @s

execute as @e[type=armor_stand,tag=ui_M_diamond] at @s run function ui:tmw/201/mine/diamond