execute positioned ~1 ~ ~ if block ~ ~ ~ #ui:coals unless entity @e[distance=..0.5,tag=ui_M_coal] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_coal"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~ ~ if block ~ ~ ~ #ui:coals unless entity @e[distance=..0.5,tag=ui_M_coal] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_coal"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~1 if block ~ ~ ~ #ui:coals unless entity @e[distance=..0.5,tag=ui_M_coal] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_coal"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~-1 if block ~ ~ ~ #ui:coals unless entity @e[distance=..0.5,tag=ui_M_coal] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_coal"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~ if block ~ ~ ~ #ui:coals unless entity @e[distance=..0.5,tag=ui_M_coal] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_coal"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~-1 ~ if block ~ ~ ~ #ui:coals unless entity @e[distance=..0.5,tag=ui_M_coal] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_coal"],NoGravity:1b,Marker:1b,Invisible:1b}

execute if block ~ ~ ~ #ui:coals run setblock ~ ~ ~ air destroy
execute unless block ~ ~ ~ #ui:coals run kill @s

execute as @e[type=armor_stand,tag=ui_M_coal] at @s run function ui:tmw/201/mine/coal