# エルドサイクル
    execute if score $burst_alt ui_temp matches 16.. run scoreboard players add $damage ui_temp 20
    execute if score $burst_alt ui_temp matches 31.. run scoreboard players add $damage ui_temp 120
    execute if score $burst_alt ui_temp matches 16.. run scoreboard players add $ink.add ui_temp 90
    execute if score $burst_alt ui_temp matches 31.. run scoreboard players add $ink.add ui_temp 90
    execute if score $burst_alt ui_temp matches 16.. run scoreboard players add $range ui_temp 10
    execute if score $burst_alt ui_temp matches 31.. run scoreboard players add $range ui_temp 30
    execute if score $burst_alt ui_temp matches 16.. run scoreboard players add $speed ui_temp 5
    execute if score $burst_alt ui_temp matches 31.. run scoreboard players add $speed ui_temp 15
    execute if score $burst_alt ui_temp matches 16.. run scoreboard players add $particle.end ui_temp 2
    execute if score $burst_alt ui_temp matches 31.. run scoreboard players add $particle.end ui_temp 5
    execute if score $burst_alt ui_temp matches 31.. run scoreboard players add $particle.fly ui_temp 1
    execute if score $burst_alt ui_temp matches 31.. run scoreboard players remove $multishot ui_temp 2
    execute if score $burst_alt ui_temp matches 16.. run scoreboard players remove $spread ui_temp 40
    execute if score $burst_alt ui_temp matches 31.. run scoreboard players remove $spread ui_temp 60
    execute if score $burst_alt ui_temp matches 31.. run data merge storage ui:gun {temp2:{Sound:5}}