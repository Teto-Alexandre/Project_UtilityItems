# 入力された方向に弾を出す
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tds.attack","ui","ui_proj","tmw_237_missile","ui_temp_unpower"],ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"null"}'}}},{},{},{}]}
execute if score $deathmessage ui_temp matches 1 as @e[tag=ui_temp_unpower] run tag @s add tmw_237_deathmessage_14
execute as @e[tag=ui_temp_unpower] rotated ~ 90 run function ui:tmw/237/attack/missile/temp_unpower
#particle end_rod ~ ~ ~ 0 0 0 1 10 force
schedule function ui:tmw/237/ss/4 1t append
scoreboard players set $success ui_temp 1