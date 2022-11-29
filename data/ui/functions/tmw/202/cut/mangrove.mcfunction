execute positioned ~1 ~ ~ if block ~ ~ ~ mangrove_log unless entity @e[distance=..0.5,tag=ui_C_mangrove] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_mangrove"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~ ~ if block ~ ~ ~ mangrove_log unless entity @e[distance=..0.5,tag=ui_C_mangrove] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_mangrove"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~1 if block ~ ~ ~ mangrove_log unless entity @e[distance=..0.5,tag=ui_C_mangrove] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_mangrove"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~-1 if block ~ ~ ~ mangrove_log unless entity @e[distance=..0.5,tag=ui_C_mangrove] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_mangrove"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~1 ~1 ~ if block ~ ~ ~ mangrove_log unless entity @e[distance=..0.5,tag=ui_C_mangrove] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_mangrove"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~1 ~1 ~1 if block ~ ~ ~ mangrove_log unless entity @e[distance=..0.5,tag=ui_C_mangrove] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_mangrove"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ mangrove_log unless entity @e[distance=..0.5,tag=ui_C_mangrove] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_mangrove"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~1 if block ~ ~ ~ mangrove_log unless entity @e[distance=..0.5,tag=ui_C_mangrove] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_mangrove"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~ if block ~ ~ ~ mangrove_log unless entity @e[distance=..0.5,tag=ui_C_mangrove] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_mangrove"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~-1 if block ~ ~ ~ mangrove_log unless entity @e[distance=..0.5,tag=ui_C_mangrove] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_mangrove"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ mangrove_log unless entity @e[distance=..0.5,tag=ui_C_mangrove] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_mangrove"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~1 ~ if block ~ ~ ~ mangrove_log unless entity @e[distance=..0.5,tag=ui_C_mangrove] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_mangrove"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ mangrove_log unless entity @e[distance=..0.5,tag=ui_C_mangrove] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_mangrove"],NoGravity:1b,Marker:1b,Invisible:1b}

execute if block ~ ~ ~ mangrove_log run setblock ~ ~ ~ air destroy
execute unless block ~ ~ ~ mangrove_log run kill @s

execute as @e[type=armor_stand,tag=ui_C_mangrove] at @s run function ui:tmw/202/cut/mangrove