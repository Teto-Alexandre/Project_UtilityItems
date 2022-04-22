execute positioned ~1 ~ ~ if block ~ ~ ~ #ui:irons unless entity @e[distance=..0.5,tag=ui_M_iron] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_iron"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~ ~ if block ~ ~ ~ #ui:irons unless entity @e[distance=..0.5,tag=ui_M_iron] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_iron"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~1 if block ~ ~ ~ #ui:irons unless entity @e[distance=..0.5,tag=ui_M_iron] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_iron"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~-1 if block ~ ~ ~ #ui:irons unless entity @e[distance=..0.5,tag=ui_M_iron] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_iron"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~ if block ~ ~ ~ #ui:irons unless entity @e[distance=..0.5,tag=ui_M_iron] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_iron"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~-1 ~ if block ~ ~ ~ #ui:irons unless entity @e[distance=..0.5,tag=ui_M_iron] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_iron"],NoGravity:1b,Marker:1b,Invisible:1b}

execute if block ~ ~ ~ #ui:irons run setblock ~ ~ ~ air destroy
execute unless block ~ ~ ~ #ui:irons run kill @s

execute as @e[type=armor_stand,tag=ui_M_iron] at @s run function ui:tmw/201/mine/iron