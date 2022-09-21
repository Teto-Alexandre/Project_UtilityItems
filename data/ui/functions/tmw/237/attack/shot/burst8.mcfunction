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
    
    execute if score $burst_alt.id ui_temp matches 204 if score $burst_alt ui_temp matches 16.. run scoreboard players add $damage ui_temp 15
    execute if score $burst_alt.id ui_temp matches 204 if score $burst_alt ui_temp matches 31.. run scoreboard players add $damage ui_temp 15
    execute if score $burst_alt.id ui_temp matches 204 if score $burst_alt ui_temp matches 16.. run scoreboard players add $ink.add ui_temp 40
    execute if score $burst_alt.id ui_temp matches 204 if score $burst_alt ui_temp matches 31.. run scoreboard players add $ink.add ui_temp 40
    execute if score $burst_alt.id ui_temp matches 204 if score $burst_alt ui_temp matches 16.. run scoreboard players add $range ui_temp 16
    execute if score $burst_alt.id ui_temp matches 204 if score $burst_alt ui_temp matches 31.. run scoreboard players add $range ui_temp 8
    execute if score $burst_alt.id ui_temp matches 204 if score $burst_alt ui_temp matches 16.. run scoreboard players add $speed ui_temp 5
    execute if score $burst_alt.id ui_temp matches 204 if score $burst_alt ui_temp matches 31.. run scoreboard players add $speed ui_temp 5
    execute if score $burst_alt.id ui_temp matches 204 if score $burst_alt ui_temp matches 16.. run scoreboard players add $particle.end ui_temp 2
    execute if score $burst_alt.id ui_temp matches 204 if score $burst_alt ui_temp matches 31.. run scoreboard players add $particle.end ui_temp 1
    execute if score $burst_alt.id ui_temp matches 204 if score $burst_alt ui_temp matches 11.. run scoreboard players remove $burst_alt ui_temp 11
    execute if score $burst_alt.id ui_temp matches 204 if score $burst_alt ui_temp matches 11.. run scoreboard players operation $burst_alt ui_temp *= #13 ui_num
    execute if score $burst_alt.id ui_temp matches 204 if score $burst_alt ui_temp matches 11.. run scoreboard players operation $spread ui_temp -= $burst_alt ui_temp
    
    execute if score $burst_alt.id ui_temp matches 205 if score $burst_alt ui_temp matches 21.. run scoreboard players add $damage ui_temp 10
    execute if score $burst_alt.id ui_temp matches 205 if score $burst_alt ui_temp matches 41.. run scoreboard players add $damage ui_temp 10
    execute if score $burst_alt.id ui_temp matches 205 if score $burst_alt ui_temp matches 21.. run scoreboard players add $ink.add ui_temp 55
    execute if score $burst_alt.id ui_temp matches 205 if score $burst_alt ui_temp matches 41.. run scoreboard players add $ink.add ui_temp 55
    execute if score $burst_alt.id ui_temp matches 205 if score $burst_alt ui_temp matches 21.. run scoreboard players add $range ui_temp 16
    execute if score $burst_alt.id ui_temp matches 205 if score $burst_alt ui_temp matches 41.. run scoreboard players add $range ui_temp 8
    execute if score $burst_alt.id ui_temp matches 205 if score $burst_alt ui_temp matches 21.. run scoreboard players add $speed ui_temp 6
    execute if score $burst_alt.id ui_temp matches 205 if score $burst_alt ui_temp matches 41.. run scoreboard players add $speed ui_temp 6
    execute if score $burst_alt.id ui_temp matches 205 if score $burst_alt ui_temp matches 21.. run scoreboard players add $particle.end ui_temp 2
    execute if score $burst_alt.id ui_temp matches 205 if score $burst_alt ui_temp matches 41.. run scoreboard players add $particle.end ui_temp 2
    execute if score $burst_alt.id ui_temp matches 205 if score $burst_alt ui_temp matches 11.. run scoreboard players remove $burst_alt ui_temp 11
    execute if score $burst_alt.id ui_temp matches 205 if score $burst_alt ui_temp matches 11.. run scoreboard players operation $burst_alt ui_temp *= #7 ui_num
    execute if score $burst_alt.id ui_temp matches 205 if score $burst_alt ui_temp matches 11.. run scoreboard players operation $spread ui_temp -= $burst_alt ui_temp

#