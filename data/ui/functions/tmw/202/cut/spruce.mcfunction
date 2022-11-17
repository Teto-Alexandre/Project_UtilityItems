execute positioned ~1 ~ ~ if block ~ ~ ~ #ui:spruce unless entity @e[distance=..0.5,tag=ui_C_spruce] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_spruce"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~ ~ if block ~ ~ ~ #ui:spruce unless entity @e[distance=..0.5,tag=ui_C_spruce] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_spruce"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~1 if block ~ ~ ~ #ui:spruce unless entity @e[distance=..0.5,tag=ui_C_spruce] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_spruce"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~-1 if block ~ ~ ~ #ui:spruce unless entity @e[distance=..0.5,tag=ui_C_spruce] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_spruce"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~1 ~1 ~ if block ~ ~ ~ #ui:spruce unless entity @e[distance=..0.5,tag=ui_C_spruce] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_spruce"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~1 ~1 ~1 if block ~ ~ ~ #ui:spruce unless entity @e[distance=..0.5,tag=ui_C_spruce] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_spruce"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ #ui:spruce unless entity @e[distance=..0.5,tag=ui_C_spruce] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_spruce"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~1 if block ~ ~ ~ #ui:spruce unless entity @e[distance=..0.5,tag=ui_C_spruce] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_spruce"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~ if block ~ ~ ~ #ui:spruce unless entity @e[distance=..0.5,tag=ui_C_spruce] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_spruce"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~-1 if block ~ ~ ~ #ui:spruce unless entity @e[distance=..0.5,tag=ui_C_spruce] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_spruce"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ #ui:spruce unless entity @e[distance=..0.5,tag=ui_C_spruce] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_spruce"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~1 ~ if block ~ ~ ~ #ui:spruce unless entity @e[distance=..0.5,tag=ui_C_spruce] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_spruce"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ #ui:spruce unless entity @e[distance=..0.5,tag=ui_C_spruce] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_spruce"],NoGravity:1b,Marker:1b,Invisible:1b}

execute if block ~ ~ ~ #ui:spruce run setblock ~ ~ ~ air destroy
execute unless block ~ ~ ~ #ui:spruce run kill @s

execute as @e[type=armor_stand,tag=ui_C_spruce] at @s run function ui:tmw/202/cut/spruce