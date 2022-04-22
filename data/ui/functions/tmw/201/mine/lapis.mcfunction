execute positioned ~1 ~ ~ if block ~ ~ ~ #ui:lapiss unless entity @e[distance=..0.5,tag=ui_M_lapis] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_lapis"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~ ~ if block ~ ~ ~ #ui:lapiss unless entity @e[distance=..0.5,tag=ui_M_lapis] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_lapis"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~1 if block ~ ~ ~ #ui:lapiss unless entity @e[distance=..0.5,tag=ui_M_lapis] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_lapis"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~-1 if block ~ ~ ~ #ui:lapiss unless entity @e[distance=..0.5,tag=ui_M_lapis] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_lapis"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~ if block ~ ~ ~ #ui:lapiss unless entity @e[distance=..0.5,tag=ui_M_lapis] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_lapis"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~-1 ~ if block ~ ~ ~ #ui:lapiss unless entity @e[distance=..0.5,tag=ui_M_lapis] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_lapis"],NoGravity:1b,Marker:1b,Invisible:1b}

execute if block ~ ~ ~ #ui:lapiss run setblock ~ ~ ~ air destroy
execute unless block ~ ~ ~ #ui:lapiss run kill @s

execute as @e[type=armor_stand,tag=ui_M_lapis] at @s run function ui:tmw/201/mine/lapis