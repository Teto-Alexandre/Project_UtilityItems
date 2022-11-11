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
    
    execute if score $burst_alt.id ui_temp matches 2 run scoreboard players operation $burst_alt ui_temp *= #2 ui_num
    execute if score $burst_alt.id ui_temp matches 2 run scoreboard players operation $damage ui_temp += $burst_alt ui_temp
    execute if score $burst_alt.id ui_temp matches 2 run scoreboard players operation $ink.add ui_temp += $burst_alt ui_temp
    execute if score $burst_alt.id ui_temp matches 2 run scoreboard players operation $burst_alt ui_temp *= #2 ui_num
    execute if score $burst_alt.id ui_temp matches 2 run scoreboard players operation $burst_alt ui_temp /= #3 ui_num
    execute if score $burst_alt.id ui_temp matches 2 run scoreboard players operation $range ui_temp += $burst_alt ui_temp
    
    execute if score $burst_alt.id ui_temp matches 3 run scoreboard players operation $burst_alt ui_temp *= #3 ui_num
    execute if score $burst_alt.id ui_temp matches 3 run scoreboard players operation $range ui_temp += $burst_alt ui_temp
    execute if score $burst_alt.id ui_temp matches 3 run scoreboard players operation $ink.add ui_temp += $burst_alt ui_temp
    execute if score $burst_alt.id ui_temp matches 3 run scoreboard players operation $burst_alt ui_temp /= #3 ui_num
    execute if score $burst_alt.id ui_temp matches 3 run scoreboard players operation $burst_alt ui_temp *= #2 ui_num
    execute if score $burst_alt.id ui_temp matches 3 run scoreboard players operation $burst_alt ui_temp *= #7 ui_num
    execute if score $burst_alt.id ui_temp matches 3 run scoreboard players operation $damage ui_temp += $burst_alt ui_temp

    execute if score $burst_alt.id ui_temp matches 51 if score $burst_alt ui_temp matches 21.. run scoreboard players add $particle.end ui_temp 1
    execute if score $burst_alt.id ui_temp matches 51 if score $burst_alt ui_temp matches 41.. run scoreboard players add $particle.end ui_temp 1
    execute if score $burst_alt.id ui_temp matches 51 if score $burst_alt ui_temp matches 60.. run scoreboard players add $particle.end ui_temp 1
    execute if score $burst_alt.id ui_temp matches 51 if score $burst_alt ui_temp matches 21.. run data merge storage ui:gun {temp2:{Sound:3}}
    execute if score $burst_alt.id ui_temp matches 51 if score $burst_alt ui_temp matches 41.. run data merge storage ui:gun {temp2:{Sound:4}}
    execute if score $burst_alt.id ui_temp matches 51 if score $burst_alt ui_temp matches 60.. run data merge storage ui:gun {temp2:{Sound:5}}

#