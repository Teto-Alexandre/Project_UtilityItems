#
    ## $range
    ## $damage
    ## $multishot
    ## $speed
    ## $ct

# チャージ数に応じて強化
    #execute if score $burst_alt.id ui_temp matches 1 run tellraw @a [{"score":{"name":"$burst_alt","objective":"ui_temp"}}]
    execute if score $burst_alt.id ui_temp matches 1 run scoreboard players operation $speed.plus ui_temp += $burst_alt ui_temp
    execute if score $burst_alt.id ui_temp matches 1 run scoreboard players operation $burst_alt ui_temp /= #2 ui_num
    execute if score $burst_alt.id ui_temp matches 1 run scoreboard players operation $multishot ui_temp += $burst_alt ui_temp
    execute if score $burst_alt.id ui_temp matches 1 run scoreboard players operation $burst_alt ui_temp /= #2 ui_num
    execute if score $burst_alt.id ui_temp matches 1 run scoreboard players operation $range ui_temp += $burst_alt ui_temp
    execute if score $burst_alt.id ui_temp matches 1 run scoreboard players operation $damage ui_temp += $burst_alt ui_temp
    #execute if score $burst_alt.id ui_temp matches 1 run tellraw @a [{"score":{"name":"$range","objective":"ui_temp"}},{"text":"/"},{"score":{"name":"$speed","objective":"ui_temp"}},{"text":"+"},{"score":{"name":"$speed.plus","objective":"ui_temp"}},{"text":"/"},{"score":{"name":"$multishot","objective":"ui_temp"}}]

#