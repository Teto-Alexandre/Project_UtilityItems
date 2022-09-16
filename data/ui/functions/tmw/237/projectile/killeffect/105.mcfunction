# ミサイルの発射を媒介する

#
# 入力された方向に弾を出す
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tds.attack","ui","ui_proj","tmw_237","ui_temp_unpower"],ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"null"}'}}},{},{},{}]}
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tds.attack","ui","ui_proj","tmw_237","ui_temp_unpower"],ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"null"}'}}},{},{},{}]}
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tds.attack","ui","ui_proj","tmw_237","ui_temp_unpower"],ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"null"}'}}},{},{},{}]}
#id共有
#team共有

#死亡メッセ変更
execute as @e[tag=ui_temp_unpower] run tag @s add tmw_237_deathmessage_14
#リフレク不可
tag @e[tag=ui_temp_unpower] add ui_refd
tag @e[tag=ui_temp_unpower] add tmw_237_noref

scoreboard players set $temp ui_temp 0
execute as @e[tag=ui_temp_unpower] run function ui:tmw/237/projectile/killeffect/105.2
