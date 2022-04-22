execute positioned ~1 ~ ~ if block ~ ~ ~ #ui:dark_oak unless entity @e[distance=..0.5,tag=ui_C_dark_oak] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_dark_oak"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~ ~ if block ~ ~ ~ #ui:dark_oak unless entity @e[distance=..0.5,tag=ui_C_dark_oak] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_dark_oak"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~1 if block ~ ~ ~ #ui:dark_oak unless entity @e[distance=..0.5,tag=ui_C_dark_oak] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_dark_oak"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~-1 if block ~ ~ ~ #ui:dark_oak unless entity @e[distance=..0.5,tag=ui_C_dark_oak] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_dark_oak"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~1 ~1 ~ if block ~ ~ ~ #ui:dark_oak unless entity @e[distance=..0.5,tag=ui_C_dark_oak] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_dark_oak"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~1 ~1 ~1 if block ~ ~ ~ #ui:dark_oak unless entity @e[distance=..0.5,tag=ui_C_dark_oak] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_dark_oak"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ #ui:dark_oak unless entity @e[distance=..0.5,tag=ui_C_dark_oak] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_dark_oak"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~1 if block ~ ~ ~ #ui:dark_oak unless entity @e[distance=..0.5,tag=ui_C_dark_oak] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_dark_oak"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~ if block ~ ~ ~ #ui:dark_oak unless entity @e[distance=..0.5,tag=ui_C_dark_oak] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_dark_oak"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~-1 if block ~ ~ ~ #ui:dark_oak unless entity @e[distance=..0.5,tag=ui_C_dark_oak] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_dark_oak"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~1 ~ if block ~ ~ ~ #ui:dark_oak unless entity @e[distance=..0.5,tag=ui_C_dark_oak] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_dark_oak"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~1 ~ if block ~ ~ ~ #ui:dark_oak unless entity @e[distance=..0.5,tag=ui_C_dark_oak] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_dark_oak"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ #ui:dark_oak unless entity @e[distance=..0.5,tag=ui_C_dark_oak] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_dark_oak"],NoGravity:1b,Marker:1b,Invisible:1b}

execute if block ~ ~ ~ #ui:dark_oak run setblock ~ ~ ~ air destroy
execute unless block ~ ~ ~ #ui:dark_oak run kill @s

execute as @e[type=armor_stand,tag=ui_C_dark_oak] at @s run function ui:tmw/202/cut/dark_oak