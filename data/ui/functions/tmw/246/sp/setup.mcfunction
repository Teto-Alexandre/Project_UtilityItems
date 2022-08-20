#=======================================================================================================

#ベースの固有IDを設定
execute as @s run scoreboard players operation @s ui_id = @p ui_id
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~4 ~ {Tags:["ui_d","ui_d_core"],Marker:1b,Invisible:1b,NoGravity:1b}
execute at @s run scoreboard players operation @e[tag=ui_d_core,sort=nearest,limit=1] ui_id = @s ui_id

#ベースの当たり判定を設定
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:iron_golem ~ ~2.5 ~ {Tags:["db","ui_hitbox","ui_h_c"],Silent:1b,NoAI:1b,NoGravity:1b,ActiveEffects:[{Id:14b,Duration:20000,Amplifier:1b,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:1000}],Health:1000.0f,DeathLootTable:"ui:empty"}
execute at @s run scoreboard players operation @e[tag=ui_h_c,sort=nearest,limit=1] ui_id = @s ui_id

#ベースのデータコア設定
data merge entity @s {ArmorItems:[{id:"stone",Count:1b,tag:{cg:{Items:[]}}},{},{},{}]}

execute at @s run setblock ~ ~ ~ structure_block{powered:0b,showboundingbox:1b,mode:"LOAD",posX:-4,posY:0,posZ:-4,sizeX:9,sizeY:9,sizeZ:9,name:"ui:core"}

execute at @s run setblock ~ ~1 ~ redstone_block

execute at @s run scoreboard players set @e[tag=ui_d_core,sort=nearest,limit=1] ui_d_hpm 100
execute at @s run scoreboard players set @e[tag=ui_d_core,sort=nearest,limit=1] ui_d_hp 100
scoreboard players add @s ui_core 1
scoreboard players set @s ui_cm 1

#処理完了
tag @s remove ui_based

#=======================================================================================================
