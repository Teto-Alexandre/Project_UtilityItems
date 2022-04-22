execute positioned ~1 ~ ~ if block ~ ~ ~ glowstone unless entity @e[distance=..0.5,tag=ui_M_glowstone] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_glowstone"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~ ~ if block ~ ~ ~ glowstone unless entity @e[distance=..0.5,tag=ui_M_glowstone] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_glowstone"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~1 if block ~ ~ ~ glowstone unless entity @e[distance=..0.5,tag=ui_M_glowstone] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_glowstone"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~-1 if block ~ ~ ~ glowstone unless entity @e[distance=..0.5,tag=ui_M_glowstone] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_glowstone"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~ if block ~ ~ ~ glowstone unless entity @e[distance=..0.5,tag=ui_M_glowstone] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_glowstone"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~-1 ~ if block ~ ~ ~ glowstone unless entity @e[distance=..0.5,tag=ui_M_glowstone] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_glowstone"],NoGravity:1b,Marker:1b,Invisible:1b}

execute if block ~ ~ ~ glowstone run setblock ~ ~ ~ air destroy
execute unless block ~ ~ ~ glowstone run kill @s

execute as @e[type=armor_stand,tag=ui_M_glowstone] at @s run function ui:tmw/201/mine/glowstone