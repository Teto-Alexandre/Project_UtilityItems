execute positioned ~1 ~ ~ if block ~ ~ ~ #ui:oak unless entity @e[distance=..0.5,tag=ui_C_oak] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_oak"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~ ~ if block ~ ~ ~ #ui:oak unless entity @e[distance=..0.5,tag=ui_C_oak] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_oak"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~1 if block ~ ~ ~ #ui:oak unless entity @e[distance=..0.5,tag=ui_C_oak] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_oak"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~-1 if block ~ ~ ~ #ui:oak unless entity @e[distance=..0.5,tag=ui_C_oak] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_oak"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~1 ~1 ~ if block ~ ~ ~ #ui:oak unless entity @e[distance=..0.5,tag=ui_C_oak] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_oak"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~1 ~1 ~1 if block ~ ~ ~ #ui:oak unless entity @e[distance=..0.5,tag=ui_C_oak] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_oak"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ #ui:oak unless entity @e[distance=..0.5,tag=ui_C_oak] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_oak"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~1 if block ~ ~ ~ #ui:oak unless entity @e[distance=..0.5,tag=ui_C_oak] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_oak"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~ if block ~ ~ ~ #ui:oak unless entity @e[distance=..0.5,tag=ui_C_oak] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_oak"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~-1 if block ~ ~ ~ #ui:oak unless entity @e[distance=..0.5,tag=ui_C_oak] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_oak"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ #ui:oak unless entity @e[distance=..0.5,tag=ui_C_oak] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_oak"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~1 ~ if block ~ ~ ~ #ui:oak unless entity @e[distance=..0.5,tag=ui_C_oak] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_oak"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ #ui:oak unless entity @e[distance=..0.5,tag=ui_C_oak] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_oak"],NoGravity:1b,Marker:1b,Invisible:1b}

execute if block ~ ~ ~ #ui:oak run setblock ~ ~ ~ air destroy
execute unless block ~ ~ ~ #ui:oak run kill @s

execute as @e[type=armor_stand,tag=ui_C_oak] at @s run function ui:tmw/202/cut/oak