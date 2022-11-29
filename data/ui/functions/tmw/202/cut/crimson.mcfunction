execute positioned ~1 ~ ~ if block ~ ~ ~ crimson_stem unless entity @e[distance=..0.5,tag=ui_C_crimson] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_crimson"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~ ~ if block ~ ~ ~ crimson_stem unless entity @e[distance=..0.5,tag=ui_C_crimson] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_crimson"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~1 if block ~ ~ ~ crimson_stem unless entity @e[distance=..0.5,tag=ui_C_crimson] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_crimson"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~-1 if block ~ ~ ~ crimson_stem unless entity @e[distance=..0.5,tag=ui_C_crimson] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_crimson"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~1 ~1 ~ if block ~ ~ ~ crimson_stem unless entity @e[distance=..0.5,tag=ui_C_crimson] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_crimson"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~1 ~1 ~1 if block ~ ~ ~ crimson_stem unless entity @e[distance=..0.5,tag=ui_C_crimson] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_crimson"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ crimson_stem unless entity @e[distance=..0.5,tag=ui_C_crimson] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_crimson"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~1 if block ~ ~ ~ crimson_stem unless entity @e[distance=..0.5,tag=ui_C_crimson] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_crimson"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~ if block ~ ~ ~ crimson_stem unless entity @e[distance=..0.5,tag=ui_C_crimson] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_crimson"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~-1 if block ~ ~ ~ crimson_stem unless entity @e[distance=..0.5,tag=ui_C_crimson] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_crimson"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ crimson_stem unless entity @e[distance=..0.5,tag=ui_C_crimson] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_crimson"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~1 ~ if block ~ ~ ~ crimson_stem unless entity @e[distance=..0.5,tag=ui_C_crimson] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_crimson"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ crimson_stem unless entity @e[distance=..0.5,tag=ui_C_crimson] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_crimson"],NoGravity:1b,Marker:1b,Invisible:1b}

execute if block ~ ~ ~ crimson_stem run setblock ~ ~ ~ air destroy
execute unless block ~ ~ ~ crimson_stem run kill @s

execute as @e[type=armor_stand,tag=ui_C_crimson] at @s run function ui:tmw/202/cut/crimson