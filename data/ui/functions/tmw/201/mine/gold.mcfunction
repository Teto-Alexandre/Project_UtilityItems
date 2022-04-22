execute positioned ~1 ~ ~ if block ~ ~ ~ #ui:golds unless entity @e[distance=..0.5,tag=ui_M_gold] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_gold"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~ ~ if block ~ ~ ~ #ui:golds unless entity @e[distance=..0.5,tag=ui_M_gold] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_gold"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~1 if block ~ ~ ~ #ui:golds unless entity @e[distance=..0.5,tag=ui_M_gold] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_gold"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~-1 if block ~ ~ ~ #ui:golds unless entity @e[distance=..0.5,tag=ui_M_gold] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_gold"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~ if block ~ ~ ~ #ui:golds unless entity @e[distance=..0.5,tag=ui_M_gold] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_gold"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~-1 ~ if block ~ ~ ~ #ui:golds unless entity @e[distance=..0.5,tag=ui_M_gold] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_M_gold"],NoGravity:1b,Marker:1b,Invisible:1b}

execute if block ~ ~ ~ #ui:golds run setblock ~ ~ ~ air destroy
execute unless block ~ ~ ~ #ui:golds run kill @s

execute as @e[type=armor_stand,tag=ui_M_gold] at @s run function ui:tmw/201/mine/gold