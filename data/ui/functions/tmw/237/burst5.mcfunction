# バースト回数記録
    execute store result score $burst_alt.id ui_temp run data get storage ui:gun temp.Burst
    execute store result score $burst_alt ui_temp run scoreboard players get @s ui_use2
    scoreboard players set $burst ui_temp 2
    #tellraw @a {"score":{"name":"$burst","objective":"ui_temp"},"color":"gold"}
    #execute at @s run playsound entity.experience_orb.pickup player @a ~ ~ ~ 0.5 1.8 0
    scoreboard players set $changed ui_temp 1

# クリック回数リセット
    scoreboard players reset @s ui_use1