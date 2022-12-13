# cold の追加効果
    scoreboard players operation @s tds_cold += $level ui_temp
    execute if score $level ui_temp matches 10.. at @e[tag=ui_temp_this] run particle block packed_ice ~ ~0.5 ~ 0.3 0.5 0.3 0 3 force
    execute if score $level ui_temp matches 10.. at @e[tag=ui_temp_this] run particle snowflake ~ ~ ~ 0.3 0.5 0.3 0 5 force
    execute if score $level ui_temp matches 10.. at @e[tag=ui_temp_this] run playsound entity.player.hurt_freeze neutral @a ~ ~ ~ 1 0.7 0