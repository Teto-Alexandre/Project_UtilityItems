#=======================================================================================================

scoreboard players operation @s ui_i_link = @e[tag=ui_i_cansel,tag=!ui_i_new,distance=..5,sort=nearest,limit=1] ui_i_id

execute as @e[tag=ui_i_cansel,tag=!ui_i_new,distance=..5,sort=nearest,limit=1] if entity @s[tag=ui_i_1] run tellraw @p [{"text":"Industry Manager","color":"yellow"},{"text":"> 初期リンク接続先: 恒星反応発電機","color":"gray"}]
execute as @e[tag=ui_i_cansel,tag=!ui_i_new,distance=..5,sort=nearest,limit=1] if entity @s[tag=ui_i_2] run tellraw @p [{"text":"Industry Manager","color":"yellow"},{"text":"> 初期リンク接続先: 熱源生成器","color":"gray"}]
execute as @e[tag=ui_i_cansel,tag=!ui_i_new,distance=..5,sort=nearest,limit=1] if entity @s[tag=ui_i_3] run tellraw @p [{"text":"Industry Manager","color":"yellow"},{"text":"> 初期リンク接続先: 簡易蓄電器","color":"gray"}]
execute as @e[tag=ui_i_cansel,tag=!ui_i_new,distance=..5,sort=nearest,limit=1] if entity @s[tag=ui_i_4] run tellraw @p [{"text":"Industry Manager","color":"yellow"},{"text":"> 初期リンク接続先: 電気かまど","color":"gray"}]
execute as @e[tag=ui_i_cansel,tag=!ui_i_new,distance=..5,sort=nearest,limit=1] if entity @s[tag=ui_i_5] run tellraw @p [{"text":"Industry Manager","color":"yellow"},{"text":"> 初期リンク接続先: 高速電気かまど","color":"gray"}]
execute as @e[tag=ui_i_cansel,tag=!ui_i_new,distance=..5,sort=nearest,limit=1] if entity @s[tag=ui_i_6] run tellraw @p [{"text":"Industry Manager","color":"yellow"},{"text":"> 初期リンク接続先: 圧縮機","color":"gray"}]
execute as @e[tag=ui_i_cansel,tag=!ui_i_new,distance=..5,sort=nearest,limit=1] if entity @s[tag=ui_i_7] run tellraw @p [{"text":"Industry Manager","color":"yellow"},{"text":"> 初期リンク接続先: 粉砕機","color":"gray"}]
execute as @e[tag=ui_i_cansel,tag=!ui_i_new,distance=..5,sort=nearest,limit=1] if entity @s[tag=ui_i_8] run tellraw @p [{"text":"Industry Manager","color":"yellow"},{"text":"> 初期リンク接続先: 注入機","color":"gray"}]
execute as @e[tag=ui_i_cansel,tag=!ui_i_new,distance=..5,sort=nearest,limit=1] if entity @s[tag=ui_i_9] run tellraw @p [{"text":"Industry Manager","color":"yellow"},{"text":"> 初期リンク接続先: 組立機","color":"gray"}]
execute as @e[tag=ui_i_cansel,tag=!ui_i_new,distance=..5,sort=nearest,limit=1] if entity @s[tag=ui_i_10] run tellraw @p [{"text":"Industry Manager","color":"yellow"},{"text":"> 初期リンク接続先: 金属加工機","color":"gray"}]

execute as @e[tag=ui_i_cansel,tag=!ui_i_new,distance=..5,sort=nearest,limit=1] if entity @s[tag=ui_i_10] run tellraw @p [{"text":"Industry Manager","color":"yellow"},{"text":"> 初期リンク接続先: 金属加工機","color":"gray"}]

execute at @e[tag=ui_i_cansel,tag=!ui_i_new,distance=..5,sort=nearest,limit=1] run particle dust 1 1 0 0.7 ~0.5 ~ ~0.5 0 0 0 0 1 normal
execute at @e[tag=ui_i_cansel,tag=!ui_i_new,distance=..5,sort=nearest,limit=1] run particle dust 1 1 0 0.7 ~0.5 ~ ~-0.5 0 0 0 0 1 normal
execute at @e[tag=ui_i_cansel,tag=!ui_i_new,distance=..5,sort=nearest,limit=1] run particle dust 1 1 0 0.7 ~0.5 ~-1 ~0.5 0 0 0 0 1 normal
execute at @e[tag=ui_i_cansel,tag=!ui_i_new,distance=..5,sort=nearest,limit=1] run particle dust 1 1 0 0.7 ~0.5 ~-1 ~-0.5 0 0 0 0 1 normal
execute at @e[tag=ui_i_cansel,tag=!ui_i_new,distance=..5,sort=nearest,limit=1] run particle dust 1 1 0 0.7 ~-0.5 ~ ~0.5 0 0 0 0 1 normal
execute at @e[tag=ui_i_cansel,tag=!ui_i_new,distance=..5,sort=nearest,limit=1] run particle dust 1 1 0 0.7 ~-0.5 ~ ~-0.5 0 0 0 0 1 normal
execute at @e[tag=ui_i_cansel,tag=!ui_i_new,distance=..5,sort=nearest,limit=1] run particle dust 1 1 0 0.7 ~-0.5 ~-1 ~0.5 0 0 0 0 1 normal
execute at @e[tag=ui_i_cansel,tag=!ui_i_new,distance=..5,sort=nearest,limit=1] run particle dust 1 1 0 0.7 ~-0.5 ~-1 ~-0.5 0 0 0 0 1 normal
execute if entity @e[tag=ui_i_cansel,tag=!ui_i_new,distance=..5,sort=nearest,limit=1] run playsound entity.experience_orb.pickup player @p ~ ~ ~ 1 1.5 0

#=======================================================================================================