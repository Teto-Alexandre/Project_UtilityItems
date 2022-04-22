execute positioned ~1 ~ ~ if block ~ ~ ~ #ui:redstones unless entity @e[distance=..0.5,tag=ui_M_redstone] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_redstone"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~ ~ if block ~ ~ ~ #ui:redstones unless entity @e[distance=..0.5,tag=ui_M_redstone] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_redstone"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~1 if block ~ ~ ~ #ui:redstones unless entity @e[distance=..0.5,tag=ui_M_redstone] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_redstone"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~-1 if block ~ ~ ~ #ui:redstones unless entity @e[distance=..0.5,tag=ui_M_redstone] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_redstone"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~ if block ~ ~ ~ #ui:redstones unless entity @e[distance=..0.5,tag=ui_M_redstone] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_redstone"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~-1 ~ if block ~ ~ ~ #ui:redstones unless entity @e[distance=..0.5,tag=ui_M_redstone] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_redstone"],NoGravity:1b,Marker:1b,Invisible:1b}

execute if block ~ ~ ~ #ui:redstones run setblock ~ ~ ~ air destroy
execute unless block ~ ~ ~ #ui:redstones run kill @s

execute as @e[type=armor_stand,tag=ui_M_redstone] at @s run function ui:tmw/201/mine/redstone