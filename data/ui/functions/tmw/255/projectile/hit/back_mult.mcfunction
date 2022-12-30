# 背面倍率

# これバックスタブ？
    summon marker ^ ^ ^1 {Tags:["ui_temp_backstub","ui_temp_backstub_front"]}
    summon marker ^ ^ ^-1 {Tags:["ui_temp_backstub","ui_temp_backstub_back"]}
    #particle dust 1 1 1 5 ^ ^ ^1 0 0 0 0 1 force
    #particle dust 0 0 0 5 ^ ^ ^-1 0 0 0 0 1 force
    #execute at @e[type=marker,tag=ui_temp_hit] run particle dust 1 1 0 5 ~ ~ ~ 0 0 0 0 1 force
    execute at @e[type=marker,tag=ui_temp_hit] as @e[type=marker,tag=ui_temp_backstub,sort=nearest,limit=1] if entity @s[tag=ui_temp_backstub_back] run scoreboard players set $backstub ui_temp 1
    #execute at @e[type=marker,tag=ui_temp_hit] as @e[type=marker,tag=ui_temp_backstub,sort=nearest,limit=1] if entity @s[tag=ui_temp_backstub_back] at @s run particle angry_villager ~ ~2 ~ 0 0 0 0 1 force
    kill @e[type=marker,tag=ui_temp_backstub]
    #execute if score $backstub ui_temp matches 0 run say a
    #execute if score $backstub ui_temp matches 1 run say b

# ヘッドショット成功
    execute if score $backstub ui_temp matches 1 at @e[tag=ui_temp_this] run particle crit ~ ~ ~ 0 0 0 0.5 5 normal
    execute if score $backstub ui_temp matches 1 at @e[tag=ui_temp_this] run playsound entity.player.attack.strong neutral @a ~ ~ ~ 1 1.2 0
    execute if score $backstub ui_temp matches 1 run scoreboard players operation $damage ui_temp *= $back_mult ui_temp
    execute if score $backstub ui_temp matches 1 run scoreboard players operation $damage ui_temp /= #100 ui_num
    execute if score $backstub ui_temp matches 1 run scoreboard players add $damage ui_temp 1