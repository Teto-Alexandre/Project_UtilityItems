#=======================================================================================================

execute at @s run setblock ~ ~ ~ structure_block{powered:0b,showboundingbox:1b,mode:"LOAD",posX:-4,posY:-4,posZ:-4,sizeX:9,sizeY:9,sizeZ:9,name:"ui:block"}
execute at @s run setblock ~ ~1 ~ redstone_block

execute as @s at @s positioned ~9 ~ ~ if entity @e[tag=ui_d,distance=..1] at @s run fill ~5 ~-2 ~-1 ~4 ~ ~1 air destroy
execute as @s at @s positioned ~-9 ~ ~ if entity @e[tag=ui_d,distance=..1] at @s run fill ~-5 ~-2 ~-1 ~-4 ~ ~1 air destroy
execute as @s at @s positioned ~ ~ ~9 if entity @e[tag=ui_d,distance=..1] at @s run fill ~-1 ~-2 ~5 ~1 ~ ~4 air destroy
execute as @s at @s positioned ~ ~ ~-9 if entity @e[tag=ui_d,distance=..1] at @s run fill ~-1 ~-2 ~-5 ~1 ~ ~-4 air destroy

execute at @s run tag @s remove ui_d_to_block
execute at @s run tag @s remove ui_d_core
execute at @s run tag @s add ui_d_block
execute at @s run tag @s add ui_d_normal
execute at @s run tag @s add ui_d_dcheck 

#当たり判定を設定
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:iron_golem ~ ~-1.5 ~ {Tags:["ui","ui_hitbox","ui_h_n","tds_nolog"],Silent:1b,NoAI:1b,NoGravity:1b,active_effects:[{id:"minecraft:invisibility",duration:20000,amplifier:1b,show_particles:0b}],Attributes:[{Name:"generic.max_health",Base:1000}],Health:1000.0f,DeathLootTable:"ui:empty"}
execute at @s run scoreboard players operation @e[tag=ui_h_n,sort=nearest,limit=1] ui_id = @s ui_id
execute at @s run scoreboard players set @e[tag=ui_h_n,sort=nearest,limit=1] ui_idc 0
scoreboard players set @s ui_d_hpm 100
scoreboard players set @s ui_d_hp 100

execute as @e[tag=ui_base,scores={ui_idc=0}] run scoreboard players remove @s ui_core 1

#=======================================================================================================
