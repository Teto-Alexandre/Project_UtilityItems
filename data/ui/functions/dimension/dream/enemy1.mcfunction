#幽鬼AI

#目の前の壁を壊す
    execute if entity @a[distance=..5] unless block ^ ^0.5 ^1 #ui:nocol run setblock ^ ^0.5 ^1 air destroy
    execute if entity @a[distance=..5] unless block ^ ^1.5 ^1 #ui:nocol run setblock ^ ^1.5 ^1 air destroy

#上に敵がいると飛び跳ねる
    scoreboard players remove @s[scores={ui_tmw_id=1..}] ui_tmw_id 1
    execute as @s[scores={ui_tmw_id=0}] at @s positioned ~ ~4 ~ if entity @a[distance=..4] if block ~ ~-0.5 ~ #ui:nocol run data modify entity @s Motion.[1] set value 1.0d
    execute as @s[scores={ui_tmw_id=0}] at @s positioned ~ ~4 ~ if entity @a[distance=..4] if block ~ ~-0.5 ~ #ui:nocol run scoreboard players set @s ui_tmw_id 30
    data modify entity @s FallDistance set value 0
    
#前に敵がいると加速＋攻撃力上昇
    scoreboard players remove @s[scores={ui_tmw_id2=1..}] ui_tmw_id2 1
    execute as @s[scores={ui_tmw_id2=0}] at @s positioned ^ ^ ^11 if entity @a[distance=..10] run effect give @s speed 5 3 true
    execute as @s[scores={ui_tmw_id2=0}] at @s positioned ^ ^ ^11 if entity @a[distance=..10] run effect give @s strength 5 1 true
    execute as @s[scores={ui_tmw_id2=0}] at @s positioned ^ ^ ^11 if entity @a[distance=..10] at @s run particle soul ~ ~1 ~ 0.5 0.5 0.5 0.1 15 force
    execute as @s[scores={ui_tmw_id2=0}] at @s positioned ^ ^ ^11 if entity @a[distance=..10] at @s run playsound entity.blaze.death hostile @a ~ ~ ~ 1 0.8 0
    execute as @s[scores={ui_tmw_id2=0}] at @s positioned ^ ^ ^11 if entity @a[distance=..10] run scoreboard players set @s ui_tmw_id2 200

#自滅機能
    scoreboard players remove @s[scores={ui_st=1..}] ui_st 1
    kill @s[scores={ui_st=..0}]