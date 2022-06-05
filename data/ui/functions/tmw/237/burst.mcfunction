# バースト回数記録
    execute store result score $burst ui_temp run data get storage ui:gun temp.Burst
    execute if score $sptype ui_temp matches 301..400 if score $sptime ui_temp matches 1.. run execute store result score $burst ui_temp run data get storage ui:gun temp.SPBurst
    #tellraw @a {"score":{"name":"$burst","objective":"ui_temp"},"color":"gold"}
    #execute at @s run playsound entity.experience_orb.pickup player @a ~ ~ ~ 0.5 1.8 0
    scoreboard players set $changed ui_temp 1

# クリック回数リセット
    scoreboard players reset @s ui_use1