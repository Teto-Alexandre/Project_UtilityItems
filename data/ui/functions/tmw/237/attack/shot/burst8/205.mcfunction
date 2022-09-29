# ラレユサイクル
    execute if score $burst_alt ui_temp matches 15.. run scoreboard players add $damage ui_temp 40
    execute if score $burst_alt ui_temp matches 31.. run scoreboard players add $damage ui_temp 40
    execute if score $burst_alt ui_temp matches 15.. run scoreboard players add $ink.add ui_temp 55
    execute if score $burst_alt ui_temp matches 31.. run scoreboard players add $ink.add ui_temp 55
    execute if score $burst_alt ui_temp matches 15.. run scoreboard players add $range ui_temp 20
    execute if score $burst_alt ui_temp matches 31.. run scoreboard players add $range ui_temp 14
    execute if score $burst_alt ui_temp matches 15.. run scoreboard players add $speed ui_temp 7
    execute if score $burst_alt ui_temp matches 31.. run scoreboard players add $speed ui_temp 7
    execute if score $burst_alt ui_temp matches 15.. run scoreboard players add $particle.end ui_temp 0
    execute if score $burst_alt ui_temp matches 31.. run scoreboard players add $particle.end ui_temp 1
    execute if score $burst_alt ui_temp matches 1.. run scoreboard players remove $burst_alt ui_temp 1
    execute if score $burst_alt ui_temp matches 1.. run scoreboard players operation $burst_alt ui_temp *= #4 ui_num
    execute if score $burst_alt ui_temp matches 1.. run scoreboard players operation $spread ui_temp -= $burst_alt ui_temp