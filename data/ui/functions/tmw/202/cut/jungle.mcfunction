execute positioned ~1 ~ ~ if block ~ ~ ~ #ui:jungle unless entity @e[distance=..0.5,tag=ui_C_jungle] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_jungle"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~ ~ if block ~ ~ ~ #ui:jungle unless entity @e[distance=..0.5,tag=ui_C_jungle] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_jungle"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~1 if block ~ ~ ~ #ui:jungle unless entity @e[distance=..0.5,tag=ui_C_jungle] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_jungle"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~-1 if block ~ ~ ~ #ui:jungle unless entity @e[distance=..0.5,tag=ui_C_jungle] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_jungle"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~1 ~1 ~ if block ~ ~ ~ #ui:jungle unless entity @e[distance=..0.5,tag=ui_C_jungle] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_jungle"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~1 ~1 ~1 if block ~ ~ ~ #ui:jungle unless entity @e[distance=..0.5,tag=ui_C_jungle] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_jungle"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ #ui:jungle unless entity @e[distance=..0.5,tag=ui_C_jungle] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_jungle"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~1 if block ~ ~ ~ #ui:jungle unless entity @e[distance=..0.5,tag=ui_C_jungle] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_jungle"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~ if block ~ ~ ~ #ui:jungle unless entity @e[distance=..0.5,tag=ui_C_jungle] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_jungle"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~-1 if block ~ ~ ~ #ui:jungle unless entity @e[distance=..0.5,tag=ui_C_jungle] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_jungle"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~1 ~ if block ~ ~ ~ #ui:jungle unless entity @e[distance=..0.5,tag=ui_C_jungle] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_jungle"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~1 ~ if block ~ ~ ~ #ui:jungle unless entity @e[distance=..0.5,tag=ui_C_jungle] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_jungle"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ #ui:jungle unless entity @e[distance=..0.5,tag=ui_C_jungle] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_jungle"],NoGravity:1b,Marker:1b,Invisible:1b}

execute if block ~ ~ ~ #ui:jungle run setblock ~ ~ ~ air destroy
execute unless block ~ ~ ~ #ui:jungle run kill @s

execute as @e[type=armor_stand,tag=ui_C_jungle] at @s run function ui:tmw/202/cut/jungle