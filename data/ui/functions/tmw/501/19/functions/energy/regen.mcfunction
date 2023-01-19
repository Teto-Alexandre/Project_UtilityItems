# エネルギー回復
execute store result score $temp ui_temp run scoreboard players get @s ui_tmw501_19_now_en
scoreboard players operation $temp ui_temp += @s ui_tmw501_19_stat_en_regen
scoreboard players operation $temp ui_temp < @s ui_tmw501_19_stat_en_max
execute if score $temp ui_temp > @s ui_tmw501_19_now_en run scoreboard players operation @s ui_tmw501_19_now_en = $temp ui_temp