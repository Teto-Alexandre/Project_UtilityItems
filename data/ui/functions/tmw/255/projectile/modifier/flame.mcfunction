# flame の追加効果
    scoreboard players operation @s tds_fire += $level ui_temp
    execute if score $level ui_temp matches 10.. at @e[tag=ui_temp_this] run particle lava ~ ~-0.5 ~ 0.3 0.5 0.3 0 3 force
    execute if score $level ui_temp matches 10.. at @e[tag=ui_temp_this] run particle flame ~ ~ ~ 0.3 0.5 0.3 0 5 force
    execute if score $level ui_temp matches 10.. at @e[tag=ui_temp_this] run playsound entity.player.hurt_on_fire neutral @a ~ ~ ~ 1 0.7 0