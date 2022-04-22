#=======================================================================================================

execute store result score @s ui_calc1 run data get entity @s ActiveEffects.[{Id:26b}].Amplifier 1

# ===== 以下 矢の追加効果 =====

#雷矢直撃時
execute as @s[scores={ui_calc1=2}] at @s run summon minecraft:lightning_bolt

#花火の矢直撃時
execute as @s[scores={ui_calc1=3}] at @s run summon minecraft:firework_rocket ~ ~ ~ {Life:0,LifeTime:0,Motion:[0.0,-1.0,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16711680]}]}}}}

#超重力の矢命中時
execute as @s[scores={ui_calc1=4}] at @s run effect give @s minecraft:levitation 15 129 true
execute as @s[scores={ui_calc1=4}] at @s run effect give @s minecraft:slowness 15 1 true
execute as @s[scores={ui_calc1=4}] at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 1 0

#暴食の矢命中時
execute as @s[scores={ui_calc1=5}] at @s run effect give @s minecraft:hunger 5 124 true
execute as @s[scores={ui_calc1=5}] at @s run playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 1 2 0

#ティルフィング命中時
execute as @s[scores={ui_calc1=8}] at @s run scoreboard players add @s ui_hp 10
execute as @s[scores={ui_calc1=8}] at @s run playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 1 2 0

#魂完全回復
scoreboard players set @s[scores={ui_calc1=11}] ui_hp 0
effect give @s[scores={ui_calc1=11}] regeneration 10 1 true
execute at @s[scores={ui_calc1=11}] run playsound entity.player.levelup player @s ~ ~ ~ 1 2 0

#エンダーアロー
execute as @s[scores={ui_calc1=17}] at @s at @a[tag=ui_luck17,sort=nearest,limit=1] run particle witch ~ ~1 ~ 0.1 0.5 0.1 0.1 15 force
execute as @s[scores={ui_calc1=17}] at @s at @a[tag=ui_luck17,sort=nearest,limit=1] run playsound entity.enderman.teleport player @a ~ ~ ~ 1.2 1.5 0
execute as @s[scores={ui_calc1=17}] at @s run gamerule sendCommandFeedback false
execute as @s[scores={ui_calc1=17}] at @s run gamemode survival @a[tag=ui_luck17,sort=nearest,limit=1,tag=ui_luck17_0]
execute as @s[scores={ui_calc1=17}] at @s run gamemode creative @a[tag=ui_luck17,sort=nearest,limit=1,tag=ui_luck17_1]
execute as @s[scores={ui_calc1=17}] at @s run gamemode adventure @a[tag=ui_luck17,sort=nearest,limit=1,tag=ui_luck17_2]
execute as @s[scores={ui_calc1=17}] at @s run gamerule sendCommandFeedback true
execute as @s[scores={ui_calc1=17}] at @s run tag @a[tag=ui_luck17,sort=nearest,limit=1,tag=ui_luck17_0] remove ui_luck17_0
execute as @s[scores={ui_calc1=17}] at @s run tag @a[tag=ui_luck17,sort=nearest,limit=1,tag=ui_luck17_1] remove ui_luck17_1
execute as @s[scores={ui_calc1=17}] at @s run tag @a[tag=ui_luck17,sort=nearest,limit=1,tag=ui_luck17_2] remove ui_luck17_2
execute as @s[scores={ui_calc1=17}] at @s run tag @a[tag=ui_luck17,sort=nearest,limit=1] remove ui_luck17

#魂回復
scoreboard players remove @s[scores={ui_calc1=18}] ui_hp 2
effect give @s[scores={ui_calc1=18}] regeneration 1 1 true
execute at @s[scores={ui_calc1=18}] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 0

#抹消シリーズ
execute as @s[scores={ui_calc1=19}] at @s run setblock ~ ~ ~ structure_block{powered:0b,showboundingbox:1b,mode:"LOAD",posX:-7,posY:-7,posZ:-7,sizeX:15,sizeY:15,sizeZ:15,name:"ui:sphere15"}
execute as @s[scores={ui_calc1=19}] at @s run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute as @s[scores={ui_calc1=19}] at @s run particle cloud ~ ~ ~ 0 0 0 0.6 50 force
execute as @s[scores={ui_calc1=19}] at @s run playsound entity.generic.explode neutral @a ~ ~ ~ 2 0.5 0
execute at @s[scores={ui_calc1=19}] as @e[type=!#ui:unhurtable,distance=..8] run function ui:potion/damage/antimatter
execute at @s[scores={ui_calc1=19}] run kill @e[type=end_crystal,distance=..8]
execute as @s[scores={ui_calc1=20}] at @s run setblock ~ ~ ~ structure_block{powered:0b,showboundingbox:1b,mode:"LOAD",posX:-11,posY:-11,posZ:-11,sizeX:23,sizeY:23,sizeZ:23,name:"ui:sphere23"}
execute as @s[scores={ui_calc1=20}] at @s run particle explosion_emitter ~ ~ ~ 3.5 3.5 3.5 0 15 force
execute as @s[scores={ui_calc1=20}] at @s run particle cloud ~ ~ ~ 3.5 3.5 3.5 1.2 150 force
execute as @s[scores={ui_calc1=20}] at @s run playsound entity.generic.explode neutral @a ~ ~ ~ 5 0.5 0
execute at @s[scores={ui_calc1=20}] as @e[type=!#ui:unhurtable,distance=..12] run function ui:potion/damage/antimatter
execute at @s[scores={ui_calc1=20}] run kill @e[type=end_crystal,distance=..12]
execute as @s[scores={ui_calc1=21}] at @s run setblock ~ ~ ~ structure_block{powered:0b,showboundingbox:1b,mode:"LOAD",posX:-15,posY:-15,posZ:-15,sizeX:31,sizeY:31,sizeZ:31,name:"ui:sphere31"}
execute as @s[scores={ui_calc1=21}] at @s run particle explosion_emitter ~ ~ ~ 6 6 6 0 50 force
execute as @s[scores={ui_calc1=21}] at @s run particle cloud ~ ~ ~ 6 6 6 1.8 500 force
execute as @s[scores={ui_calc1=21}] at @s run playsound entity.generic.explode neutral @a ~ ~ ~ 9 0.5 0
execute at @s[scores={ui_calc1=21}] as @e[type=!#ui:unhurtable,distance=..16] run function ui:potion/damage/antimatter
execute at @s[scores={ui_calc1=21}] run kill @e[type=end_crystal,distance=..16]
execute as @s[scores={ui_calc1=19..21}] at @s run execute at @s run setblock ~ ~1 ~ redstone_block

#耐性シリーズ
scoreboard players reset @s[scores={ui_calc1=26}] tds_fire
scoreboard players add @s[scores={ui_calc1=26}] tds_firer 10
effect give @s[scores={ui_calc1=26}] fire_resistance 10 0
execute at @s[scores={ui_calc1=26}] run playsound block.fire.extinguish player @s ~ ~ ~ 1 1 0
scoreboard players reset @s[scores={ui_calc1=27}] tds_cold
scoreboard players add @s[scores={ui_calc1=27}] tds_coldr 10
execute at @s[scores={ui_calc1=27}] run playsound entity.blaze.shoot player @s ~ ~ ~ 1 0.7 0
scoreboard players add @s[scores={ui_calc1=28}] tds_amethyst 150000
scoreboard players set @s[scores={ui_calc1=28}] tds_amethyst_t 10
execute at @s[scores={ui_calc1=28}] run playsound block.amethyst_block.chime player @s ~ ~ ~ 1 1.4 0


execute as @s[scores={ui_calc1=2..28}] at @s run effect clear @s minecraft:luck

scoreboard players reset @s ui_calc1

#テスト用
#say ポーション効果を受けたよ！

#=======================================================================================================
