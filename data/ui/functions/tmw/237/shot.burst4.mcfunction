#
    ## $range
    ## $damage
    ## $multishot
    ## $speed

# チャージ数に応じて強化
    #execute if score $burst4.id ui_temp matches 1 run tellraw @a [{"score":{"name":"$burst4","objective":"ui_temp"}}]
    execute if score $burst4.id ui_temp matches 1 run scoreboard players operation $speed.plus ui_temp += $burst4 ui_temp
    execute if score $burst4.id ui_temp matches 1 run scoreboard players operation $burst4 ui_temp /= #2 ui_num
    execute if score $burst4.id ui_temp matches 1 run scoreboard players operation $multishot ui_temp += $burst4 ui_temp
    execute if score $burst4.id ui_temp matches 1 run scoreboard players operation $burst4 ui_temp /= #2 ui_num
    execute if score $burst4.id ui_temp matches 1 run scoreboard players operation $range ui_temp += $burst4 ui_temp
    execute if score $burst4.id ui_temp matches 1 run scoreboard players operation $damage ui_temp += $burst4 ui_temp
    #execute if score $burst4.id ui_temp matches 1 run tellraw @a [{"score":{"name":"$range","objective":"ui_temp"}},{"text":"/"},{"score":{"name":"$speed","objective":"ui_temp"}},{"text":"+"},{"score":{"name":"$speed.plus","objective":"ui_temp"}},{"text":"/"},{"score":{"name":"$multishot","objective":"ui_temp"}}]

#