#> ui:potion/arrow_hit
#
# 矢の「幸運の値」を参照して「地面に刺さった」時実行する
#
# 原則地面hit時はkillして下さい　データ型が消えます
#
# @public

# ===== 以下 着弾時の追加効果 =====

#雷矢
execute as @s[scores={ui_calc1=2}] at @s run summon minecraft:lightning_bolt

#花火の矢
execute as @s[scores={ui_calc1=3}] at @s run summon minecraft:firework_rocket ~ ~ ~ {Life:0,LifeTime:0,Motion:[0.0,-1.0,0.0],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16711680]}]}}}}

#滅撃の矢
execute as @s[scores={ui_calc1=6}] at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force

#火矢
execute as @s[scores={ui_calc1=9}] at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0.1 10 force

#ダークプリズム
execute as @s[scores={ui_calc1=10}] at @s run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.1 10 force

#隕石の矢
execute as @s[scores={ui_calc1=16}] at @s run particle minecraft:flame ~ ~ ~ 0.3 5 0.3 0.05 100 force
execute as @s[scores={ui_calc1=16}] at @s run summon minecraft:fireball ~ ~50 ~ {power:[0.0d,-0.1d,0.0d],ExplosionPower:6}

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

#対空近接信管の矢
execute as @s[scores={ui_calc1=23}] at @s run summon creeper ~ ~ ~ {ExplosionRadius:16,ignited:1b,Invulnerable:1b,Fuse:0}
execute as @s[scores={ui_calc1=23}] at @s run setblock ~ ~ ~ structure_block{powered:0b,showboundingbox:1b,mode:"LOAD",posX:-7,posY:-7,posZ:-7,sizeX:15,sizeY:15,sizeZ:15,name:"ui:sphere15"}
execute as @s[scores={ui_calc1=23}] at @s run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute as @s[scores={ui_calc1=23}] at @s run particle cloud ~ ~ ~ 0 0 0 0.6 50 force
execute as @s[scores={ui_calc1=23}] at @s run playsound entity.generic.explode neutral @a ~ ~ ~ 2 0.5 0
execute as @s[scores={ui_calc1=23}] at @s run execute at @s run setblock ~ ~1 ~ redstone_block

#Zeus
execute as @s[scores={ui_calc1=24}] at @s run setblock ~ ~ ~ structure_block{powered:0b,showboundingbox:1b,mode:"LOAD",posX:0,posY:0,posZ:0,sizeX:32,sizeY:31,sizeZ:32,name:"ui:sphere63/ppp"}
execute as @s[scores={ui_calc1=24}] at @s run setblock ~ ~ ~-1 structure_block{powered:0b,showboundingbox:1b,mode:"LOAD",posX:0,posY:0,posZ:-30,sizeX:32,sizeY:31,sizeZ:31,name:"ui:sphere63/pnp"}
execute as @s[scores={ui_calc1=24}] at @s run setblock ~-2 ~ ~ structure_block{powered:0b,showboundingbox:1b,mode:"LOAD",posX:-29,posY:0,posZ:0,sizeX:31,sizeY:31,sizeZ:32,name:"ui:sphere63/npp"}
execute as @s[scores={ui_calc1=24}] at @s run setblock ~-2 ~ ~-1 structure_block{powered:0b,showboundingbox:1b,mode:"LOAD",posX:-29,posY:0,posZ:-30,sizeX:31,sizeY:31,sizeZ:31,name:"ui:sphere63/nnp"}
execute as @s[scores={ui_calc1=24}] at @s run setblock ~ ~-1 ~ structure_block{powered:0b,showboundingbox:1b,mode:"LOAD",posX:0,posY:-31,posZ:0,sizeX:32,sizeY:32,sizeZ:32,name:"ui:sphere63/ppn"}
execute as @s[scores={ui_calc1=24}] at @s run setblock ~ ~-1 ~-1 structure_block{powered:0b,showboundingbox:1b,mode:"LOAD",posX:0,posY:-31,posZ:-30,sizeX:32,sizeY:32,sizeZ:31,name:"ui:sphere63/pnn"}
execute as @s[scores={ui_calc1=24}] at @s run setblock ~-2 ~-1 ~ structure_block{powered:0b,showboundingbox:1b,mode:"LOAD",posX:-29,posY:-31,posZ:0,sizeX:31,sizeY:32,sizeZ:32,name:"ui:sphere63/npn"}
execute as @s[scores={ui_calc1=24}] at @s run setblock ~-2 ~-1 ~-1 structure_block{powered:0b,showboundingbox:1b,mode:"LOAD",posX:-29,posY:-31,posZ:-30,sizeX:31,sizeY:32,sizeZ:31,name:"ui:sphere63/nnn"}
execute as @s[scores={ui_calc1=24}] at @s run particle explosion_emitter ~ ~ ~ 10 10 10 0 150 force
execute as @s[scores={ui_calc1=24}] at @s run particle cloud ~ ~ ~ 10 10 10 2 1000 force
execute as @s[scores={ui_calc1=24}] at @s run playsound entity.generic.explode neutral @a ~ ~ ~ 16 0.5 0
execute at @s[scores={ui_calc1=24}] as @e[type=!#ui:unhurtable,distance=..32] run function ui:potion/damage/antimatter
execute at @s[scores={ui_calc1=24}] run kill @e[type=end_crystal,distance=..32]
execute as @s[scores={ui_calc1=24}] at @s run execute at @s run fill ~1 ~ ~ ~1 ~-1 ~-1 redstone_block
execute as @s[scores={ui_calc1=24}] at @s run execute at @s run fill ~-1 ~ ~ ~-1 ~-1 ~-1 redstone_block

execute as @s[scores={ui_calc1=2..21}] at @s run kill @s
execute as @s[scores={ui_calc1=23..24}] at @s run kill @s

tag @s add ui_groundd

#テスト用
#say 地面に刺さったよ！