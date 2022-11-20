#=======================================================================================================

execute as @s[tag=ui_egg_i_1] at @s run setblock ~ ~ ~ barrel{CustomName:'{"text":"恒星反応発電機"}'} destroy
execute as @s[tag=ui_egg_i_1] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130001}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_1","ui_i_machine","ui_i_suout","ui_i_new","ui_i_cansel"]}
execute as @s[tag=ui_egg_i_1] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_1,sort=nearest,limit=1] ui_i_sum 600
execute as @s[tag=ui_egg_i_1] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_1,sort=nearest,limit=1] ui_i_suo 5
execute as @s[tag=ui_egg_i_1] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_1,sort=nearest,limit=1] ui_i_sug 1
execute as @s[tag=ui_egg_i_1] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_1,sort=nearest,limit=1] ui_i_gui 0
execute as @s[tag=ui_egg_i_1] at @s run playsound block.metal.place block @a ~ ~ ~ 1 1 0

execute as @s[tag=ui_egg_i_2] at @s run setblock ~ ~ ~ barrel{CustomName:'{"text":"熱源生成器"}'} destroy
execute as @s[tag=ui_egg_i_2] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=0.0..45.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130002,ui:{Item:{id:"minecraft:blaze_powder",Count:1b,tag:{display:{Name:'{"italic":false,"color":"aqua","text":"熱源"}'}}}}}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_2","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[180.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_2] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=45.1..135.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130002,ui:{Item:{id:"minecraft:blaze_powder",Count:1b,tag:{display:{Name:'{"italic":false,"color":"aqua","text":"熱源"}'}}}}}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_2","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[270.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_2] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=135.1..225.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130002,ui:{Item:{id:"minecraft:blaze_powder",Count:1b,tag:{display:{Name:'{"italic":false,"color":"aqua","text":"熱源"}'}}}}}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_2","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[0.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_2] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=225.1..315.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130002,ui:{Item:{id:"minecraft:blaze_powder",Count:1b,tag:{display:{Name:'{"italic":false,"color":"aqua","text":"熱源"}'}}}}}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_2","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[90.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_2] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=315.1..360.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130002,ui:{Item:{id:"minecraft:blaze_powder",Count:1b,tag:{display:{Name:'{"italic":false,"color":"aqua","text":"熱源"}'}}}}}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_2","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[180.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_2] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_2,sort=nearest,limit=1] ui_i_sum 2000
execute as @s[tag=ui_egg_i_2] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_2,sort=nearest,limit=1] ui_i_suo 5
execute as @s[tag=ui_egg_i_2] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_2,sort=nearest,limit=1] ui_i_suu 15
execute as @s[tag=ui_egg_i_2] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_2,sort=nearest,limit=1] ui_i_ctp 1
execute as @s[tag=ui_egg_i_2] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_2,sort=nearest,limit=1] ui_i_gui 0
execute as @s[tag=ui_egg_i_2] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_2,sort=nearest,limit=1] ui_i_item 0
execute as @s[tag=ui_egg_i_2] at @s run playsound block.metal.place block @a ~ ~ ~ 1 1 0

execute as @s[tag=ui_egg_i_3] at @s run setblock ~ ~ ~ barrel{CustomName:'{"text":"簡易蓄電機"}'} destroy
execute as @s[tag=ui_egg_i_3] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130003}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_3","ui_i_machine","ui_i_suin","ui_i_suout","ui_i_new","ui_i_cansel"]}
execute as @s[tag=ui_egg_i_3] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_3,sort=nearest,limit=1] ui_i_sum 10000
execute as @s[tag=ui_egg_i_3] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_3,sort=nearest,limit=1] ui_i_sui 10
execute as @s[tag=ui_egg_i_3] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_3,sort=nearest,limit=1] ui_i_suo 40
execute as @s[tag=ui_egg_i_3] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_3,sort=nearest,limit=1] ui_i_gui 0
execute as @s[tag=ui_egg_i_3] at @s run playsound block.metal.place block @a ~ ~ ~ 1 1 0

execute as @s[tag=ui_egg_i_4] at @s run setblock ~ ~ ~ furnace{CustomName:'{"text":"電気かまど"}'} destroy
execute as @s[tag=ui_egg_i_4] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=0.0..45.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130004}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_4","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[180.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_4] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=45.1..135.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130004}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_4","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[270.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_4] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=135.1..225.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130004}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_4","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[0.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_4] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=225.1..315.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130004}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_4","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[90.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_4] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=315.1..360.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130004}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_4","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[180.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_4] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_4,sort=nearest,limit=1] ui_i_sum 2000
execute as @s[tag=ui_egg_i_4] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_4,sort=nearest,limit=1] ui_i_suo 5
execute as @s[tag=ui_egg_i_4] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_4,sort=nearest,limit=1] ui_i_suu 2
execute as @s[tag=ui_egg_i_4] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_4,sort=nearest,limit=1] ui_i_ctp 20
execute as @s[tag=ui_egg_i_4] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_4,sort=nearest,limit=1] ui_i_gui 0
execute as @s[tag=ui_egg_i_4] at @s run playsound block.metal.place block @a ~ ~ ~ 1 1 0

execute as @s[tag=ui_egg_i_5] at @s run setblock ~ ~ ~ furnace{CustomName:'{"text":"高速電気かまど"}'} destroy
execute as @s[tag=ui_egg_i_5] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=0.0..45.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130004}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_5","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[180.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_5] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=45.1..135.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130004}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_5","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[270.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_5] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=135.1..225.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130004}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_5","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[0.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_5] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=225.1..315.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130004}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_5","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[90.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_5] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=315.1..360.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130004}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_5","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[180.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_5] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_5,sort=nearest,limit=1] ui_i_sum 8000
execute as @s[tag=ui_egg_i_5] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_5,sort=nearest,limit=1] ui_i_suo 5
execute as @s[tag=ui_egg_i_5] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_5,sort=nearest,limit=1] ui_i_suu 8
execute as @s[tag=ui_egg_i_5] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_5,sort=nearest,limit=1] ui_i_ctp 50
execute as @s[tag=ui_egg_i_5] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_5,sort=nearest,limit=1] ui_i_gui 0
execute as @s[tag=ui_egg_i_5] at @s run playsound block.metal.place block @a ~ ~ ~ 1 1 0

execute as @s[tag=ui_egg_i_6] at @s run setblock ~ ~ ~ barrel{CustomName:'{"text":"圧縮機"}'} destroy
execute as @s[tag=ui_egg_i_6] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=0.0..45.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130006}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_6","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[180.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_6] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=45.1..135.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130006}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_6","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[270.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_6] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=135.1..225.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130006}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_6","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[0.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_6] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=225.1..315.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130006}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_6","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[90.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_6] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=315.1..360.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130006}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_6","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[180.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_6] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_6,sort=nearest,limit=1] ui_i_sum 2000
execute as @s[tag=ui_egg_i_6] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_6,sort=nearest,limit=1] ui_i_suo 5
execute as @s[tag=ui_egg_i_6] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_6,sort=nearest,limit=1] ui_i_suu 4
execute as @s[tag=ui_egg_i_6] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_6,sort=nearest,limit=1] ui_i_ctp 10
execute as @s[tag=ui_egg_i_6] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_6,sort=nearest,limit=1] ui_i_gui 0
execute as @s[tag=ui_egg_i_6] at @s run playsound block.metal.place block @a ~ ~ ~ 1 1 0

execute as @s[tag=ui_egg_i_7] at @s run setblock ~ ~ ~ barrel{CustomName:'{"text":"粉砕機"}'} destroy
execute as @s[tag=ui_egg_i_7] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=0.0..45.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130007}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_7","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[180.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_7] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=45.1..135.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130007}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_7","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[270.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_7] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=135.1..225.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130007}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_7","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[0.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_7] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=225.1..315.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130007}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_7","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[90.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_7] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=315.1..360.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130007}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_7","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[180.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_7] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_7,sort=nearest,limit=1] ui_i_sum 2000
execute as @s[tag=ui_egg_i_7] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_7,sort=nearest,limit=1] ui_i_suo 5
execute as @s[tag=ui_egg_i_7] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_7,sort=nearest,limit=1] ui_i_suu 4
execute as @s[tag=ui_egg_i_7] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_7,sort=nearest,limit=1] ui_i_ctp 10
execute as @s[tag=ui_egg_i_7] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_7,sort=nearest,limit=1] ui_i_gui 0
execute as @s[tag=ui_egg_i_7] at @s run playsound block.metal.place block @a ~ ~ ~ 1 1 0

execute as @s[tag=ui_egg_i_8] at @s run setblock ~ ~ ~ barrel{CustomName:'{"text":"注入機"}'} destroy
execute as @s[tag=ui_egg_i_8] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=0.0..45.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130008}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_8","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[180.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_8] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=45.1..135.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130008}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_8","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[270.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_8] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=135.1..225.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130008}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_8","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[0.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_8] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=225.1..315.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130008}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_8","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[90.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_8] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=315.1..360.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130008}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_8","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[180.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_8] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_8,sort=nearest,limit=1] ui_i_sum 2000
execute as @s[tag=ui_egg_i_8] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_8,sort=nearest,limit=1] ui_i_suo 5
execute as @s[tag=ui_egg_i_8] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_8,sort=nearest,limit=1] ui_i_suu 4
execute as @s[tag=ui_egg_i_8] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_8,sort=nearest,limit=1] ui_i_ctp 10
execute as @s[tag=ui_egg_i_8] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_8,sort=nearest,limit=1] ui_i_gui 0
execute as @s[tag=ui_egg_i_8] at @s run playsound block.metal.place block @a ~ ~ ~ 1 1 0

execute as @s[tag=ui_egg_i_9] at @s run setblock ~ ~ ~ barrel{CustomName:'{"text":"組立機"}'} destroy
execute as @s[tag=ui_egg_i_9] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=0.0..45.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130009}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_9","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[180.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_9] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=45.1..135.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130009}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_9","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[270.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_9] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=135.1..225.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130009}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_9","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[0.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_9] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=225.1..315.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130009}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_9","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[90.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_9] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=315.1..360.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130009}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_9","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[180.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_9] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_9,sort=nearest,limit=1] ui_i_sum 2000
execute as @s[tag=ui_egg_i_9] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_9,sort=nearest,limit=1] ui_i_suo 5
execute as @s[tag=ui_egg_i_9] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_9,sort=nearest,limit=1] ui_i_suu 4
execute as @s[tag=ui_egg_i_9] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_9,sort=nearest,limit=1] ui_i_ctp 10
execute as @s[tag=ui_egg_i_9] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_9,sort=nearest,limit=1] ui_i_gui 0
execute as @s[tag=ui_egg_i_9] at @s run playsound block.metal.place block @a ~ ~ ~ 1 1 0

execute as @s[tag=ui_egg_i_10] at @s run setblock ~ ~ ~ barrel{CustomName:'{"text":"金属加工機"}'} destroy
execute as @s[tag=ui_egg_i_10] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=0.0..45.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130010}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_10","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[180.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_10] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=45.1..135.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130010}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_10","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[270.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_10] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=135.1..225.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130010}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_10","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[0.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_10] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=225.1..315.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130010}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_10","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[90.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_10] at @s at @p[gamemode=!spectator] if entity @p[distance=..1,y_rotation=315.1..360.0] at @s align xyz run summon armor_stand ~0.5 ~1.0 ~0.5 {ArmorItems:[{},{},{},{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130010}}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["ui_i","ui_i_10","ui_i_machine","ui_i_suout","ui_i_item_in","ui_i_item_out","ui_i_new","ui_i_cansel"],Rotation:[180.0f,0.0f],Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=ui_egg_i_10] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_10,sort=nearest,limit=1] ui_i_sum 2000
execute as @s[tag=ui_egg_i_10] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_10,sort=nearest,limit=1] ui_i_suo 5
execute as @s[tag=ui_egg_i_10] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_10,sort=nearest,limit=1] ui_i_suu 4
execute as @s[tag=ui_egg_i_10] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_10,sort=nearest,limit=1] ui_i_ctp 10
execute as @s[tag=ui_egg_i_10] at @s positioned ~ ~1 ~ run scoreboard players set @e[tag=ui_i_10,sort=nearest,limit=1] ui_i_gui 0
execute as @s[tag=ui_egg_i_10] at @s run playsound block.metal.place block @a ~ ~ ~ 1 1 0

execute as @e[tag=ui_i_new] at @s unless entity @a[scores={ui_st=1..},distance=..5] run function ui:industry/make_id
execute as @e[tag=ui_i_new] at @s unless entity @a[scores={ui_st=1..},distance=..5] run function ui:industry/link

tag @e[tag=ui_i_new] remove ui_i_new

teleport @s 0 -200 0
kill @s

#=======================================================================================================
