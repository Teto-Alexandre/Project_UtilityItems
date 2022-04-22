execute positioned ~1 ~ ~ if block ~ ~ ~ #ui:coppers unless entity @e[distance=..0.5,tag=ui_M_gold] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_copper"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~ ~ if block ~ ~ ~ #ui:coppers unless entity @e[distance=..0.5,tag=ui_M_gold] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_copper"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~1 if block ~ ~ ~ #ui:coppers unless entity @e[distance=..0.5,tag=ui_M_gold] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_copper"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~-1 if block ~ ~ ~ #ui:coppers unless entity @e[distance=..0.5,tag=ui_M_gold] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_copper"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~ if block ~ ~ ~ #ui:coppers unless entity @e[distance=..0.5,tag=ui_M_gold] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_copper"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~-1 ~ if block ~ ~ ~ #ui:coppers unless entity @e[distance=..0.5,tag=ui_M_gold] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_copper"],NoGravity:1b,Marker:1b,Invisible:1b}

execute if block ~ ~ ~ #ui:coppers run setblock ~ ~ ~ air destroy
execute unless block ~ ~ ~ #ui:coppers run kill @s

execute as @e[type=armor_stand,tag=ui_M_copper] at @s run function ui:tmw/201/mine/copper