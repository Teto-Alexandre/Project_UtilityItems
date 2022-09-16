# バースト回数記録
    execute if score $basetype ui_temp matches 1 run function ui:tmw/237/basetype/burst_alt_id/1
    execute if score $basetype ui_temp matches 2 run function ui:tmw/237/basetype/burst_alt_id/2
    execute if score $basetype ui_temp matches 3 run function ui:tmw/237/basetype/burst_alt_id/3
    execute if score $basetype ui_temp matches -1 run function ui:tmw/237/basetype/burst_alt_id/sp
    execute if score $basetype ui_temp matches -2 run function ui:tmw/237/basetype/burst_alt_id/sub
# 秒数制限取得
    execute if score $basetype ui_temp matches 1 run function ui:tmw/237/basetype/burstmax/1
    execute if score $basetype ui_temp matches 2 run function ui:tmw/237/basetype/burstmax/2
    execute if score $basetype ui_temp matches 3 run function ui:tmw/237/basetype/burstmax/3
    execute if score $basetype ui_temp matches -1 run function ui:tmw/237/basetype/burstmax/sp
    execute if score $basetype ui_temp matches -2 run function ui:tmw/237/basetype/burstmax/sub
    scoreboard players operation @s ui_use2 < $burst.max ui_temp
    execute store result score $burst_alt ui_temp run scoreboard players get @s ui_use2
    scoreboard players set $burst ui_temp 2
    #tellraw @a [{"score":{"name":"$burst","objective":"ui_temp"},"color":"gold"},{"score":{"name":"$burst.max","objective":"ui_temp"},"color":"aqua"}]
    #execute at @s run playsound entity.experience_orb.pickup player @a ~ ~ ~ 0.5 1.8 0
    scoreboard players set $changed ui_temp 1

# クリック回数リセット
    tag @s[tag=tmw_use_n] remove tmw_use_n
    tag @s[tag=tmw_use_s] remove tmw_use_s
    scoreboard players set @s ui_use1 0