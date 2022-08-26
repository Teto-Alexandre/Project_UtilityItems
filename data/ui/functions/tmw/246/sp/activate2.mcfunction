#=======================================================================================================

execute as @s at @s positioned ~9 ~ ~ if entity @e[tag=ui_d,tag=!ui_d_nosel,distance=..1] at @s run fill ~5 ~-2 ~-1 ~4 ~ ~1 air destroy
execute as @s at @s positioned ~-9 ~ ~ if entity @e[tag=ui_d,tag=!ui_d_nosel,distance=..1] at @s run fill ~-5 ~-2 ~-1 ~-4 ~ ~1 air destroy
execute as @s at @s positioned ~ ~ ~9 if entity @e[tag=ui_d,tag=!ui_d_nosel,distance=..1] at @s run fill ~-1 ~-2 ~5 ~1 ~ ~4 air destroy
execute as @s at @s positioned ~ ~ ~-9 if entity @e[tag=ui_d,tag=!ui_d_nosel,distance=..1] at @s run fill ~-1 ~-2 ~-5 ~1 ~ ~-4 air destroy

execute as @s at @s if entity @a[scores={ui_idc=0,ui_trg=7..8}] positioned ~9 ~9 ~ if entity @e[tag=ui_d,tag=!ui_d_nosel,distance=..1] at @s run fill ~5 ~7 ~-1 ~4 ~9 ~1 air destroy
execute as @s at @s if entity @a[scores={ui_idc=0,ui_trg=7..8}] positioned ~-9 ~9 ~ if entity @e[tag=ui_d,tag=!ui_d_nosel,distance=..1] at @s run fill ~-5 ~7 ~-1 ~-4 ~9 ~1 air destroy
execute as @s at @s if entity @a[scores={ui_idc=0,ui_trg=7..8}] positioned ~ ~9 ~9 if entity @e[tag=ui_d,tag=!ui_d_nosel,distance=..1] at @s run fill ~-1 ~7 ~5 ~1 ~9 ~4 air destroy
execute as @s at @s if entity @a[scores={ui_idc=0,ui_trg=7..8}] positioned ~ ~9 ~-9 if entity @e[tag=ui_d,tag=!ui_d_nosel,distance=..1] at @s run fill ~-1 ~7 ~-5 ~1 ~9 ~-4 air destroy

execute as @s at @s if entity @a[scores={ui_idc=0,ui_trg=9..10}] positioned ~9 ~18 ~ if entity @e[tag=ui_d,tag=!ui_d_nosel,distance=..1] at @s run fill ~5 ~16 ~-1 ~4 ~18 ~1 air destroy
execute as @s at @s if entity @a[scores={ui_idc=0,ui_trg=9..10}] positioned ~-9 ~18 ~ if entity @e[tag=ui_d,tag=!ui_d_nosel,distance=..1] at @s run fill ~-5 ~16 ~-1 ~-4 ~18 ~1 air destroy
execute as @s at @s if entity @a[scores={ui_idc=0,ui_trg=9..10}] positioned ~ ~18 ~9 if entity @e[tag=ui_d,tag=!ui_d_nosel,distance=..1] at @s run fill ~-1 ~16 ~5 ~1 ~18 ~4 air destroy
execute as @s at @s if entity @a[scores={ui_idc=0,ui_trg=9..10}] positioned ~ ~18 ~-9 if entity @e[tag=ui_d,tag=!ui_d_nosel,distance=..1] at @s run fill ~-1 ~16 ~-5 ~1 ~18 ~-4 air destroy

execute at @s run tag @s remove ui_sel_obj2
execute at @s run tag @s remove ui
execute at @s run tag @s add ui_d

execute at @s if entity @a[scores={ui_idc=0,ui_trg=1}] run tag @s add ui_d_block
execute at @s if entity @a[scores={ui_idc=0,ui_trg=2}] run tag @s add ui_d_glass
execute at @s if entity @a[scores={ui_idc=0,ui_trg=1..2}] run tag @s add ui_d_normal
execute at @s if entity @a[scores={ui_idc=0,ui_trg=3}] run tag @s add ui_d_data
execute at @s if entity @a[scores={ui_idc=0,ui_trg=4}] run tag @s add ui_d_mana
execute at @s if entity @a[scores={ui_idc=0,ui_trg=5}] run tag @s add ui_d_stone
execute at @s if entity @a[scores={ui_idc=0,ui_trg=6}] run tag @s add ui_d_wood
execute at @s if entity @a[scores={ui_idc=0,ui_trg=7}] run tag @s add ui_d_stair_d
execute at @s if entity @a[scores={ui_idc=0,ui_trg=8}] run tag @s add ui_d_stair_u
execute at @s if entity @a[scores={ui_idc=0,ui_trg=8}] run tag @s add ui_d_nohit
execute at @s if entity @a[scores={ui_idc=0,ui_trg=9}] run tag @s add ui_d_stair_d
execute at @s if entity @a[scores={ui_idc=0,ui_trg=10}] run tag @s add ui_d_stair_u
execute at @s if entity @a[scores={ui_idc=0,ui_trg=10}] run tag @s add ui_d_nohit
execute at @s if entity @a[scores={ui_idc=0,ui_trg=7..10}] run tag @s add ui_d_stair
execute at @s if entity @a[scores={ui_idc=0,ui_trg=11}] run tag @s add ui_d_shield1
execute at @s if entity @a[scores={ui_idc=0,ui_trg=11}] run tag @s add ui_d_shield

execute at @s if entity @a[scores={ui_idc=0,ui_trg=7}] run summon minecraft:armor_stand ~ ~9 ~ {Tags:["ui_d_new","ui_d","ui_d_nohit","ui_d_stair","ui_d_stair_u"],Marker:1b,Invisible:1b,NoGravity:1b}
execute at @s if entity @a[scores={ui_idc=0,ui_trg=7}] run scoreboard players operation @e[tag=ui_d_new,sort=nearest,limit=1] ui_id = @s ui_id
execute at @s if entity @a[scores={ui_idc=0,ui_trg=7}] run scoreboard players set @e[tag=ui_d_new,sort=nearest,limit=1] ui_idc 0

execute at @s if entity @a[scores={ui_idc=0,ui_trg=8}] run summon minecraft:armor_stand ~ ~-9 ~ {Tags:["ui_d_new","ui_d","ui_d_stair","ui_d_stair_d"],Marker:1b,Invisible:1b,NoGravity:1b}
execute at @s if entity @a[scores={ui_idc=0,ui_trg=8}] run scoreboard players operation @e[tag=ui_d_new,sort=nearest,limit=1] ui_id = @s ui_id
execute at @s if entity @a[scores={ui_idc=0,ui_trg=8}] run scoreboard players set @e[tag=ui_d_new,sort=nearest,limit=1] ui_idc 0

execute at @s if entity @a[scores={ui_idc=0,ui_trg=9}] run summon minecraft:armor_stand ~ ~18 ~ {Tags:["ui_d_new","ui_d","ui_d_nohit","ui_d_stair","ui_d_stair_u"],Marker:1b,Invisible:1b,NoGravity:1b}
execute at @s if entity @a[scores={ui_idc=0,ui_trg=9}] run scoreboard players operation @e[tag=ui_d_new,sort=nearest,limit=1] ui_id = @s ui_id
execute at @s if entity @a[scores={ui_idc=0,ui_trg=9}] run scoreboard players set @e[tag=ui_d_new,sort=nearest,limit=1] ui_idc 0
execute at @s if entity @a[scores={ui_idc=0,ui_trg=9}] run summon minecraft:armor_stand ~ ~9 ~ {Tags:["ui_d_new2","ui_d","ui_d_nohit","ui_d_nosel","ui_d_stair","ui_d_stair_m"],Marker:1b,Invisible:1b,NoGravity:1b}
execute at @s if entity @a[scores={ui_idc=0,ui_trg=9}] run scoreboard players operation @e[tag=ui_d_new2,sort=nearest,limit=1] ui_id = @s ui_id
execute at @s if entity @a[scores={ui_idc=0,ui_trg=9}] run scoreboard players set @e[tag=ui_d_new2,sort=nearest,limit=1] ui_idc 0

execute at @s if entity @a[scores={ui_idc=0,ui_trg=10}] run summon minecraft:armor_stand ~ ~-18 ~ {Tags:["ui_d_new","ui_d","ui_d_stair","ui_d_stair_d"],Marker:1b,Invisible:1b,NoGravity:1b}
execute at @s if entity @a[scores={ui_idc=0,ui_trg=10}] run scoreboard players operation @e[tag=ui_d_new,sort=nearest,limit=1] ui_id = @s ui_id
execute at @s if entity @a[scores={ui_idc=0,ui_trg=10}] run scoreboard players set @e[tag=ui_d_new,sort=nearest,limit=1] ui_idc 0
execute at @s if entity @a[scores={ui_idc=0,ui_trg=10}] run summon minecraft:armor_stand ~ ~-9 ~ {Tags:["ui_d_new2","ui_d","ui_d_nohit","ui_d_nosel","ui_d_stair","ui_d_stair_m"],Marker:1b,Invisible:1b,NoGravity:1b}
execute at @s if entity @a[scores={ui_idc=0,ui_trg=10}] run scoreboard players operation @e[tag=ui_d_new2,sort=nearest,limit=1] ui_id = @s ui_id
execute at @s if entity @a[scores={ui_idc=0,ui_trg=10}] run scoreboard players set @e[tag=ui_d_new2,sort=nearest,limit=1] ui_idc 0

execute as @e[tag=ui_base,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=4}] run scoreboard players add @s ui_mana_gen 5
execute as @e[tag=ui_base,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=5}] run scoreboard players add @s ui_stone_gen 3
execute as @e[tag=ui_base,scores={ui_idc=0}] if entity @a[scores={ui_idc=0,ui_trg=6}] run scoreboard players add @s ui_wood_gen 3

#当たり判定を設定
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:iron_golem ~ ~-1.5 ~ {Tags:["ui","ui_hitbox","ui_h_n","tds_nolog"],Silent:1b,NoAI:1b,NoGravity:1b,ActiveEffects:[{Id:14b,Duration:20000,Amplifier:1b,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:1000}],Health:1000.0f,DeathLootTable:"ui:empty"}
execute at @s run scoreboard players operation @e[tag=ui_h_n,sort=nearest,limit=1] ui_id = @s ui_id
execute at @s run scoreboard players set @e[tag=ui_h_n,sort=nearest,limit=1] ui_idc 0
scoreboard players set @s ui_d_hpm 100
scoreboard players set @s ui_d_hp 100

#小階段（下）
execute at @s if entity @a[scores={ui_idc=0,ui_trg=8}] positioned ~ ~-9 ~ run scoreboard players set @e[tag=ui_d_new,sort=nearest,limit=1] ui_d_hpm 100
execute at @s if entity @a[scores={ui_idc=0,ui_trg=8}] positioned ~ ~-9 ~ run scoreboard players set @e[tag=ui_d_new,sort=nearest,limit=1] ui_d_hp 100
execute if entity @a[scores={ui_idc=0,ui_trg=8}] run scoreboard players reset @s ui_d_hpm
execute if entity @a[scores={ui_idc=0,ui_trg=8}] run scoreboard players reset @s ui_d_hp
execute at @s as @e[tag=ui_h_n,sort=nearest,limit=1] if entity @a[scores={ui_idc=0,ui_trg=8}] run teleport @s ~ ~-10.5 ~ ~ ~

#長階段（下）
execute at @s if entity @a[scores={ui_idc=0,ui_trg=10}] positioned ~ ~-18 ~ run scoreboard players set @e[tag=ui_d_new,sort=nearest,limit=1] ui_d_hpm 100
execute at @s if entity @a[scores={ui_idc=0,ui_trg=10}] positioned ~ ~-18 ~ run scoreboard players set @e[tag=ui_d_new,sort=nearest,limit=1] ui_d_hp 100
execute if entity @a[scores={ui_idc=0,ui_trg=10}] run scoreboard players reset @s ui_d_hpm
execute if entity @a[scores={ui_idc=0,ui_trg=10}] run scoreboard players reset @s ui_d_hp
execute at @s as @e[tag=ui_h_n,sort=nearest,limit=1] if entity @a[scores={ui_idc=0,ui_trg=10}] run teleport @s ~ ~-19.5 ~ ~ ~

execute at @s if entity @a[scores={ui_idc=0,ui_trg=7..10}] run tag @e[tag=ui_d_new,sort=nearest,limit=1] remove ui_d_new
execute at @s if entity @a[scores={ui_idc=0,ui_trg=9..10}] run tag @e[tag=ui_d_new2,sort=nearest,limit=1] remove ui_d_new2


#処理完了
tag @s remove ui_sel_obj2-2
scoreboard players reset @a[scores={ui_idc=0,ui_trg=1..}] ui_trg
execute as @e[tag=ui_sel,scores={ui_idc=0}] run tag @s remove ui_sel
execute as @e[tag=ui_sel_obj,scores={ui_idc=0}] run kill @s

function ui:tmw/246/sp/path
scoreboard players set sys ui_path 0

#=======================================================================================================
