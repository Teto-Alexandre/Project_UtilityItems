execute positioned ~1 ~ ~ if block ~ ~ ~ nether_quartz_ore unless entity @e[distance=..0.5,tag=ui_M_quartz] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_quartz"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~ ~ if block ~ ~ ~ nether_quartz_ore unless entity @e[distance=..0.5,tag=ui_M_quartz] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_quartz"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~1 if block ~ ~ ~ nether_quartz_ore unless entity @e[distance=..0.5,tag=ui_M_quartz] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_quartz"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~-1 if block ~ ~ ~ nether_quartz_ore unless entity @e[distance=..0.5,tag=ui_M_quartz] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_quartz"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~ if block ~ ~ ~ nether_quartz_ore unless entity @e[distance=..0.5,tag=ui_M_quartz] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_quartz"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~-1 ~ if block ~ ~ ~ nether_quartz_ore unless entity @e[distance=..0.5,tag=ui_M_quartz] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_quartz"],NoGravity:1b,Marker:1b,Invisible:1b}

execute if block ~ ~ ~ nether_quartz_ore run setblock ~ ~ ~ air destroy
execute unless block ~ ~ ~ nether_quartz_ore run kill @s

execute as @e[type=armor_stand,tag=ui_M_quartz] at @s run function ui:tmw/201/mine/quartz