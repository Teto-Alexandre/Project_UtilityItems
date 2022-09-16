# $ink = $ink.max になるまで.lp
    execute if score $cooltime ui_temp matches 0 if entity @s[nbt={ActiveEffects:[{Id:15b}]}] run scoreboard players operation $ink.s ui_temp /= #2 ui_num
    execute if score $cooltime ui_temp matches 0 if entity @s[nbt={ActiveEffects:[{Id:15b}]}] run scoreboard players operation $ink.m ui_temp /= #2 ui_num
    execute if score $ishold ui_temp matches ..1 if score $cooltime ui_temp matches 0 if score @s ui_use2 matches 0 unless entity @s[tag=ui_temp_move] run scoreboard players operation $ink ui_temp += $ink.s ui_temp
    execute if score $ishold ui_temp matches ..1 if score $cooltime ui_temp matches 0 if score @s ui_use2 matches 0 if entity @s[tag=ui_temp_move] run scoreboard players operation $ink ui_temp += $ink.m ui_temp
    execute if score $sptype ui_temp matches 254 if score $sptime ui_temp matches 1.. run scoreboard players operation $ink ui_temp += $ink.s ui_temp
    execute if score $sptype ui_temp matches 254 if score $sptime ui_temp matches 1.. run scoreboard players operation $ink ui_temp += $ink.s ui_temp
    scoreboard players operation $ink ui_temp < $ink.max ui_temp
    #tellraw @a {"score":{"name":"$ink","objective":"ui_temp"},"color":"gold"}
    #tellraw @a [{"score":{"name":"$ink.temp","objective":"ui_temp"}},{"text":"/"},{"score":{"name":"$ink.max","objective":"ui_temp"}}]

# 変更した
    scoreboard players set $changed ui_temp 1

# エフェクト
    execute if score $team ui_temp matches 1 at @s run particle dust 0.5 1 1 0.6 ~ ~1 ~ 0.5 0.5 0.5 0 1 normal
    execute if score $team ui_temp matches 2 at @s run particle dust 1 0.5 1 0.6 ~ ~1 ~ 0.5 0.5 0.5 0 1 normal
    execute if score $team ui_temp matches 3 at @s run particle dust 1 1 0.5 0.6 ~ ~1 ~ 0.5 0.5 0.5 0 1 normal
    execute if score $team ui_temp matches 4 at @s run particle dust 0.5 1 0.5 0.6 ~ ~1 ~ 0.5 0.5 0.5 0 1 normal