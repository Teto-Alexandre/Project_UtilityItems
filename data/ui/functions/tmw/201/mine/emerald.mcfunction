execute positioned ~1 ~ ~ if block ~ ~ ~ #ui:emeralds unless entity @e[distance=..0.5,tag=ui_M_emerald] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_emerald"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~ ~ if block ~ ~ ~ #ui:emeralds unless entity @e[distance=..0.5,tag=ui_M_emerald] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_emerald"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~1 if block ~ ~ ~ #ui:emeralds unless entity @e[distance=..0.5,tag=ui_M_emerald] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_emerald"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~-1 if block ~ ~ ~ #ui:emeralds unless entity @e[distance=..0.5,tag=ui_M_emerald] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_emerald"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~ if block ~ ~ ~ #ui:emeralds unless entity @e[distance=..0.5,tag=ui_M_emerald] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_emerald"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~-1 ~ if block ~ ~ ~ #ui:emeralds unless entity @e[distance=..0.5,tag=ui_M_emerald] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_emerald"],NoGravity:1b,Marker:1b,Invisible:1b}

execute if block ~ ~ ~ #ui:emeralds run setblock ~ ~ ~ air destroy
execute unless block ~ ~ ~ #ui:emeralds run kill @s

execute as @e[type=armor_stand,tag=ui_M_emerald] at @s run function ui:tmw/201/mine/emerald