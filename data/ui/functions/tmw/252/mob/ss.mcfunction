# tick処理
    execute as @e[tag=tmw_252_base,scores={ui_is=0..999}] at @s at @e[type=small_fireball,distance=..2] run summon fireball ~ ~ ~ {Tags:["ui_temp_summoned","tmw_252_fireball1"],ExplosionPower:2,Motion:[0.0d,0.0d,0.0d]}
    execute as @e[tag=tmw_252_base,scores={ui_is=0..999}] at @s as @e[type=small_fireball,distance=..2] run data modify entity @e[tag=ui_temp_summoned,sort=nearest,limit=1] power set from entity @s power
    execute as @e[tag=tmw_252_base,scores={ui_is=0..999}] at @s as @e[type=small_fireball,distance=..2] run data modify entity @e[tag=ui_temp_summoned,sort=nearest,limit=1] Motion set from entity @s Motion
    execute as @e[tag=tmw_252_base,scores={ui_is=0..999}] at @s run kill @e[type=small_fireball,distance=..2]
    execute as @e[tag=ui_temp_summoned] run tag @s remove ui_temp_summoned

# 火球
    execute as @e[tag=tmw_252_fireball1] at @s run particle lava ~ ~ ~ 0 0 0 0 1 normal

# SSロジック維持
    execute if entity @e[tag=tmw_252_base,scores={ui_is=0..999}] run schedule function ui:tmw/252/mob/ss 1t append