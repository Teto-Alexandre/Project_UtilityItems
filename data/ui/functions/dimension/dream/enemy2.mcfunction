#幽玄AI

#パーティクル
    particle soul_fire_flame ~ ~0.4 ~ 1 0.2 1 0.05 1 force

#目の前の壁を壊す
    execute store result score $temp ui_temp run gamerule mobGriefing
    execute if entity @a[distance=..5] if score $temp ui_temp matches 1 unless block ^ ^0.5 ^1 #ui:nocol run setblock ^ ^0.5 ^1 air destroy
    execute if entity @a[distance=..5] if score $temp ui_temp matches 1 unless block ^ ^1.5 ^1 #ui:nocol run setblock ^ ^1.5 ^1 air destroy

#上に敵がいると飛び跳ねる
    scoreboard players remove @s[scores={ui_tmw_id=1..}] ui_tmw_id 1
    execute as @s[scores={ui_tmw_id=0}] at @s positioned ~ ~6 ~ if entity @a[distance=..5] if block ~ ~-0.5 ~ #ui:nocol run data modify entity @s Motion.[1] set value 1.5d
    execute as @s[scores={ui_tmw_id=0}] at @s positioned ~ ~6 ~ if entity @a[distance=..5] if block ~ ~-0.5 ~ #ui:nocol run scoreboard players set @s ui_tmw_id 100
    data modify entity @s FallDistance set value 0

#前に敵がいると加速＋攻撃力上昇
    scoreboard players remove @s[scores={ui_tmw_id2=1..}] ui_tmw_id2 1
    execute as @s[scores={ui_tmw_id2=0}] at @s positioned ^ ^ ^16 if entity @a[distance=..15] run effect give @s speed 10 3 true
    execute as @s[scores={ui_tmw_id2=0}] at @s positioned ^ ^ ^16 if entity @a[distance=..15] run effect give @s strength 10 2 true
    execute as @s[scores={ui_tmw_id2=0}] at @s positioned ^ ^ ^16 if entity @a[distance=..15] run effect give @s resistance 10 1 true
    execute as @s[scores={ui_tmw_id2=0}] at @s positioned ^ ^ ^16 if entity @a[distance=..15] at @s run particle soul ~ ~1 ~ 0.5 0.5 0.5 0.15 25 force
    execute as @s[scores={ui_tmw_id2=0}] at @s positioned ^ ^ ^16 if entity @a[distance=..15] at @s run playsound entity.blaze.death hostile @a ~ ~ ~ 1 0.5 0
    execute as @s[scores={ui_tmw_id2=0}] at @s positioned ^ ^ ^16 if entity @a[distance=..15] run scoreboard players set @s ui_tmw_id2 600

#幽鬼召喚
    scoreboard players remove @s[scores={ui_st=1..}] ui_st 1
    execute as @s[scores={ui_st=0}] if entity @a[distance=5..] run summon zombie ~ ~ ~ {Tags:["ui_e2_dream"]}
    execute as @s[scores={ui_st=0}] if entity @a[distance=5..] run summon zombie ~ ~ ~ {Tags:["ui_e2_dream"]}
    execute as @s[scores={ui_st=0}] if entity @a[distance=5..] run summon zombie ~ ~ ~ {Tags:["ui_e2_dream"]}
    execute as @s[scores={ui_st=0}] if entity @a[distance=5..] run scoreboard players set @e[tag=ui_e2_dream] ui_st 1800
    execute as @s[scores={ui_st=0}] if entity @a[distance=5..] run spreadplayers ~ ~ 1 5 false @e[tag=ui_e2_dream]
    execute as @s[scores={ui_st=0}] if entity @a[distance=5..] at @e[tag=ui_e2_dream] run particle dust 0.5 1 1 1.5 ~ ~1 ~ 1 1 1 0 20 force
    execute as @s[scores={ui_st=0}] if entity @a[distance=5..] run tag @e[tag=ui_e2_dream] remove ui_e2_dream 
    execute as @s[scores={ui_st=0}] if entity @a[distance=5..] at @s run particle dust 0.5 1 1 1.5 ~ ~1 ~ 1.5 0.5 1.5 0 30 force
    execute as @s[scores={ui_st=0}] if entity @a[distance=5..] at @s run playsound entity.evoker.prepare_attack hostile @a ~ ~ ~ 2 0.8 0
    execute as @s[scores={ui_st=0}] if entity @a[distance=5..] run scoreboard players set @s ui_st 1200
