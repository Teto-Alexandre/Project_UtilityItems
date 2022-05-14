# $ink = $ink.max になるまで.lp
    execute unless entity @s[tag=ui_temp_move] run scoreboard players operation $ink ui_temp += $ink.s ui_temp
    execute if entity @s[tag=ui_temp_move] run scoreboard players operation $ink ui_temp += $ink.m ui_temp
    scoreboard players operation $ink ui_temp < $ink.max ui_temp
    #tellraw @a {"score":{"name":"$ink","objective":"ui_temp"},"color":"gold"}
    scoreboard players operation $ink.temp ui_temp = $ink ui_temp
    scoreboard players operation $ink.temp ui_temp *= #100 ui_num
    scoreboard players operation $ink.temp ui_temp /= $ink.max ui_temp
    scoreboard players operation $ink.temp ui_temp > #5 ui_num
    scoreboard players operation $ink.temp ui_temp < #95 ui_num
    #tellraw @a [{"score":{"name":"$ink.temp","objective":"ui_temp"}},{"text":"/"},{"score":{"name":"$ink.max","objective":"ui_temp"}}]

# 変更した
    scoreboard players set $changed ui_temp 1

# エフェクト
    execute if score $color ui_temp matches 1 at @s run particle dust 0.5 1 1 0.6 ~ ~1 ~ 0.5 0.5 0.5 0 1 normal
    execute if score $color ui_temp matches 2 at @s run particle dust 1 0.5 1 0.6 ~ ~1 ~ 0.5 0.5 0.5 0 1 normal