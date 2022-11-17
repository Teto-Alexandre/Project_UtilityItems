execute positioned ~1 ~ ~ if block ~ ~ ~ #ui:acacia unless entity @e[distance=..0.5,tag=ui_C_acacia] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_acacia"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~ ~ if block ~ ~ ~ #ui:acacia unless entity @e[distance=..0.5,tag=ui_C_acacia] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_acacia"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~1 if block ~ ~ ~ #ui:acacia unless entity @e[distance=..0.5,tag=ui_C_acacia] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_acacia"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~-1 if block ~ ~ ~ #ui:acacia unless entity @e[distance=..0.5,tag=ui_C_acacia] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_acacia"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~1 ~1 ~ if block ~ ~ ~ #ui:acacia unless entity @e[distance=..0.5,tag=ui_C_acacia] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_acacia"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~1 ~1 ~1 if block ~ ~ ~ #ui:acacia unless entity @e[distance=..0.5,tag=ui_C_acacia] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_acacia"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ #ui:acacia unless entity @e[distance=..0.5,tag=ui_C_acacia] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_acacia"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~1 if block ~ ~ ~ #ui:acacia unless entity @e[distance=..0.5,tag=ui_C_acacia] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_acacia"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~ if block ~ ~ ~ #ui:acacia unless entity @e[distance=..0.5,tag=ui_C_acacia] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_acacia"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~-1 if block ~ ~ ~ #ui:acacia unless entity @e[distance=..0.5,tag=ui_C_acacia] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_acacia"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ #ui:acacia unless entity @e[distance=..0.5,tag=ui_C_acacia] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_acacia"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~1 ~ if block ~ ~ ~ #ui:acacia unless entity @e[distance=..0.5,tag=ui_C_acacia] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_acacia"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ #ui:acacia unless entity @e[distance=..0.5,tag=ui_C_acacia] run summon minecraft:armor_stand ~ ~ ~ {Tags:["ui_C_acacia"],NoGravity:1b,Marker:1b,Invisible:1b}

execute if block ~ ~ ~ #ui:acacia run setblock ~ ~ ~ air destroy
execute unless block ~ ~ ~ #ui:acacia run kill @s

execute as @e[type=armor_stand,tag=ui_C_acacia] at @s run function ui:tmw/202/cut/acacia