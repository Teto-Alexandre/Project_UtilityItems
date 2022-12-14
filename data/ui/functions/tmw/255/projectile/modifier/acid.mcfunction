# acid の追加効果
    scoreboard players operation @s tds_acid += $level ui_temp
    execute if score $level ui_temp matches 10.. at @e[tag=ui_temp_this] run particle block yellow_terracotta ~ ~-0.5 ~ 0.3 0.3 0.3 0 3 force
    execute if score $level ui_temp matches 10.. at @e[tag=ui_temp_this] run particle dust 1 1 0.5 0.6 ~ ~ ~ 0.3 0.3 0.3 0 5 force
    execute if score $level ui_temp matches 10.. at @e[tag=ui_temp_this] run playsound entity.player.hurt_drown neutral @a ~ ~ ~ 1 1.5 0