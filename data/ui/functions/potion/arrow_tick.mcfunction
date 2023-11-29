#> ui:potion/arrow_tick
#
# 矢の「幸運の値」を参照して「常時実行」する
#
# @public

execute store result score @s ui_calc1 run data get entity @s custom_potion_effects.[{id:"minecraft:luck"}].Amplifier 1
scoreboard players reset @s[scores={ui_calc1=0}] ui_calc1

# ===== 以下 プレイヤー関連の矢の追加効果 =====

#エンダーアロー
execute as @s[scores={ui_calc1=17}] at @s run teleport @p[tag=ui_luck17] ~ ~ ~

#彗星の矢
execute as @s[scores={ui_calc1=22}] at @s run scoreboard players add @s ui_tc 1
execute as @s[scores={ui_calc1=22,ui_tc=20..},nbt={inGround:1b}] at @s run function ui:potion/system/22/main_d
execute as @s[scores={ui_calc1=22,ui_tc=20..},nbt={inGround:0b}] at @s run function ui:potion/system/22/main

#対空近接信管の矢
execute as @s[scores={ui_calc1=23}] store result score $temp ui_temp run gamerule mobGriefing
execute as @s[scores={ui_calc1=23}] at @s run scoreboard players add @s ui_tc 1
execute as @s[scores={ui_calc1=23,ui_tc=10..}] at @s if entity @e[distance=..12,predicate=ui:load_unhurtable,nbt={OnGround:0b}] run summon creeper ~ ~ ~ {ExplosionRadius:16,ignited:1b,Invulnerable:1b,Fuse:0,CustomName:'[{"text":"[","color":"white"},{"text":"対空近接信管の矢","color":"yellow","bold":true},{"text":"]","color":"white"}]'}
execute as @s[scores={ui_calc1=23,ui_tc=10..}] if score $temp ui_temp matches 1 at @s if entity @e[distance=..12,predicate=ui:load_unhurtable,nbt={OnGround:0b}] run setblock ~ ~ ~ structure_block{powered:0b,showboundingbox:1b,mode:"LOAD",posX:-7,posY:-7,posZ:-7,sizeX:15,sizeY:15,sizeZ:15,name:"ui:sphere15"}
execute as @s[scores={ui_calc1=23,ui_tc=10..}] at @s if entity @e[distance=..12,predicate=ui:load_unhurtable,nbt={OnGround:0b}] run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute as @s[scores={ui_calc1=23,ui_tc=10..}] at @s if entity @e[distance=..12,predicate=ui:load_unhurtable,nbt={OnGround:0b}] run particle cloud ~ ~ ~ 0 0 0 0.6 50 force
execute as @s[scores={ui_calc1=23,ui_tc=10..}] at @s if entity @e[distance=..12,predicate=ui:load_unhurtable,nbt={OnGround:0b}] run playsound entity.generic.explode neutral @a ~ ~ ~ 2 0.5 0
execute as @s[scores={ui_calc1=23,ui_tc=10..}] if score $temp ui_temp matches 1 at @s if entity @e[distance=..12,predicate=ui:load_unhurtable,nbt={OnGround:0b}] run execute at @s run setblock ~ ~1 ~ redstone_block
execute as @s[scores={ui_calc1=23,ui_tc=10..}] at @s if entity @e[distance=..12,predicate=ui:load_unhurtable,nbt={OnGround:0b}] run kill @s



# ===== 以下 非プレイヤーの矢の追加効果 =====

#彗星小弾
execute as @s[tag=ui_arrow_22] at @s run particle firework ~ ~ ~ 0 0 0 0 1 force
execute as @s[tag=ui_arrow_22,nbt={inGround:1b}] at @s run kill @s


#テスト用
#say 矢が飛んでるよ！