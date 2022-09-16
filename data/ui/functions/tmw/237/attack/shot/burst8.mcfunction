#
    ## $range
    ## $damage
    ## $multishot
    ## $speed
    ## $ct

# チャージ数に応じて強化
    #execute if score $burst_alt.id ui_temp matches 201 run tellraw @a [{"score":{"name":"$burst_alt","objective":"ui_temp"}}]
    execute if score $burst_alt.id ui_temp matches 201 run scoreboard players operation $speed.plus ui_temp += $burst_alt ui_temp
    execute if score $burst_alt.id ui_temp matches 201 run scoreboard players operation $burst_alt ui_temp /= #2 ui_num
    execute if score $burst_alt.id ui_temp matches 201 run scoreboard players operation $multishot ui_temp += $burst_alt ui_temp
    execute if score $burst_alt.id ui_temp matches 201 run scoreboard players operation $burst_alt ui_temp /= #2 ui_num
    execute if score $burst_alt.id ui_temp matches 201 run scoreboard players operation $range ui_temp += $burst_alt ui_temp
    execute if score $burst_alt.id ui_temp matches 201 run scoreboard players operation $damage ui_temp += $burst_alt ui_temp
    #execute if score $burst_alt.id ui_temp matches 201 run tellraw @a [{"score":{"name":"$range","objective":"ui_temp"}},{"text":"/"},{"score":{"name":"$speed","objective":"ui_temp"}},{"text":"+"},{"score":{"name":"$speed.plus","objective":"ui_temp"}},{"text":"/"},{"score":{"name":"$multishot","objective":"ui_temp"}}]
    
    execute if score $burst_alt.id ui_temp matches 202 run scoreboard players operation $burst_alt ui_temp *= #2 ui_num
    execute if score $burst_alt.id ui_temp matches 202 run scoreboard players operation $damage ui_temp += $burst_alt ui_temp
    execute if score $burst_alt.id ui_temp matches 202 run scoreboard players operation $ink.add ui_temp += $burst_alt ui_temp
    execute if score $burst_alt.id ui_temp matches 202 run scoreboard players operation $burst_alt ui_temp /= #2 ui_num
    execute if score $burst_alt.id ui_temp matches 202 run scoreboard players operation $range ui_temp += $burst_alt ui_temp
    
    execute if score $burst_alt.id ui_temp matches 203 if score $burst_alt ui_temp matches 13.. run scoreboard players add $damage ui_temp 30
    execute if score $burst_alt.id ui_temp matches 203 run scoreboard players operation $burst_alt ui_temp *= #10 ui_num
    execute if score $burst_alt.id ui_temp matches 203 run scoreboard players operation $ink.add ui_temp += $burst_alt ui_temp
    execute if score $burst_alt.id ui_temp matches 203 run scoreboard players operation $burst_alt ui_temp /= #5 ui_num
    execute if score $burst_alt.id ui_temp matches 203 run scoreboard players operation $range ui_temp += $burst_alt ui_temp
    execute if score $burst_alt.id ui_temp matches 203 run scoreboard players operation $burst_alt ui_temp *= #4 ui_num
    execute if score $burst_alt.id ui_temp matches 203 run scoreboard players operation $damage ui_temp += $burst_alt ui_temp

#