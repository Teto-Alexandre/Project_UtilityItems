# コア設置
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["ui_17_1","ui_17_1_temp"]}
execute as @e[tag=ui_17_1_temp] run function ui:make_id
tag @e[tag=ui_17_1_temp] remove ui_17_1_temp
playsound entity.player.levelup player @a ~ ~ ~ 1 1.2 0