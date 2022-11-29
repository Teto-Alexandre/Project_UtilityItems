execute positioned ~1 ~ ~ if block ~ ~ ~ warped_stem unless entity @e[distance=..0.5,tag=ui_C_warp] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_warp"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~ ~ if block ~ ~ ~ warped_stem unless entity @e[distance=..0.5,tag=ui_C_warp] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_warp"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~1 if block ~ ~ ~ warped_stem unless entity @e[distance=..0.5,tag=ui_C_warp] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_warp"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~-1 if block ~ ~ ~ warped_stem unless entity @e[distance=..0.5,tag=ui_C_warp] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_warp"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~1 ~1 ~ if block ~ ~ ~ warped_stem unless entity @e[distance=..0.5,tag=ui_C_warp] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_warp"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~1 ~1 ~1 if block ~ ~ ~ warped_stem unless entity @e[distance=..0.5,tag=ui_C_warp] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_warp"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ warped_stem unless entity @e[distance=..0.5,tag=ui_C_warp] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_warp"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~1 if block ~ ~ ~ warped_stem unless entity @e[distance=..0.5,tag=ui_C_warp] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_warp"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~ if block ~ ~ ~ warped_stem unless entity @e[distance=..0.5,tag=ui_C_warp] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_warp"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~-1 if block ~ ~ ~ warped_stem unless entity @e[distance=..0.5,tag=ui_C_warp] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_warp"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ warped_stem unless entity @e[distance=..0.5,tag=ui_C_warp] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_warp"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~1 ~ if block ~ ~ ~ warped_stem unless entity @e[distance=..0.5,tag=ui_C_warp] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_warp"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ warped_stem unless entity @e[distance=..0.5,tag=ui_C_warp] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_warp"],NoGravity:1b,Marker:1b,Invisible:1b}

execute if block ~ ~ ~ warped_stem run setblock ~ ~ ~ air destroy
execute unless block ~ ~ ~ warped_stem run kill @s

execute as @e[type=armor_stand,tag=ui_C_warp] at @s run function ui:tmw/202/cut/warp