#=======================================================================================================

#ベースの当たり判定を設定
execute at @s unless entity @e[tag=ui_hitbox,distance=..3] run scoreboard players set @s ui_d_d 1000000
execute at @s[tag=ui_d_core] unless entity @e[tag=ui_hitbox,distance=..3] align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:iron_golem ~ ~-1.5 ~ {Tags:["ui","ui_hitbox2","ui_h_c","tds_nolog"],Silent:1b,NoAI:1b,NoGravity:1b,ActiveEffects:[{Id:14,Duration:20000,Amplifier:1b,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:1000}],Health:1000.0f,DeathLootTable:"ui:empty"}
execute at @s[tag=ui_d_core] unless entity @e[tag=ui_hitbox,distance=..3] run scoreboard players operation @e[tag=ui_h_c,sort=nearest,limit=1] ui_id = @s ui_id
execute at @s[tag=ui_d_core] unless entity @e[tag=ui_hitbox,distance=..3] run scoreboard players set @e[tag=ui_h_c,sort=nearest,limit=1] ui_idc 0
execute at @s[tag=!ui_d_core] unless entity @e[tag=ui_hitbox,distance=..3] align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:iron_golem ~ ~-1.5 ~ {Tags:["ui","ui_hitbox2","ui_h_n","tds_nolog"],Silent:1b,NoAI:1b,NoGravity:1b,ActiveEffects:[{Id:14,Duration:20000,Amplifier:1b,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:1000}],Health:1000.0f,DeathLootTable:"ui:empty"}
execute at @s[tag=!ui_d_core] unless entity @e[tag=ui_hitbox,distance=..3] run scoreboard players operation @e[tag=ui_h_n,sort=nearest,limit=1] ui_id = @s ui_id
execute at @s[tag=!ui_d_core] unless entity @e[tag=ui_hitbox,distance=..3] run scoreboard players set @e[tag=ui_h_n,sort=nearest,limit=1] ui_idc 0
tag @e[tag=ui_hitbox2] add ui_hitbox
tag @e[tag=ui_hitbox2] remove ui_hitbox2

#ダメージ計算
scoreboard players set @s ui_calc1 0
execute at @s store result score @s ui_calc1 run data get entity @e[tag=ui_hitbox,sort=nearest,limit=1,distance=..3] Health -1
execute at @s run data merge entity @e[tag=ui_hitbox,sort=nearest,limit=1,distance=..3] {Health:1000.0f}
scoreboard players operation @s ui_calc1 += #1000 ui_num
scoreboard players operation @s ui_d_d += @s ui_calc1
scoreboard players set @s[scores={ui_d_d=..-1}] ui_d_d 0
#ui_d_dが受けるダメージの総計になる(x>0)
scoreboard players operation @s ui_d_sh -= @s ui_d_d
#ダメージが上回ったならシールドはマイナス
scoreboard players set @s ui_d_d 0
execute as @s[scores={ui_d_sh=..-1}] run scoreboard players operation @s ui_d_d -= @s ui_d_sh
scoreboard players set @s[scores={ui_d_sh=..-1}] ui_d_sh 0
scoreboard players operation @s ui_d_hp -= @s ui_d_d
scoreboard players set @s ui_d_d 0

#HPが0以下になった
execute at @s[scores={ui_d_hp=..0}] run kill @e[tag=ui_hitbox,distance=..3]
execute as @s[tag=ui_d_core,scores={ui_d_hp=..0}] run tag @s add ui_d_to_block
execute as @s[tag=!ui_d_core,scores={ui_d_hp=..0}] run tag @s add ui_d_death

#=======================================================================================================
