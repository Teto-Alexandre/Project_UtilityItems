#
    ## $range
    ## $damage
    ## $multishot
    ## $speed
    ## $ct

# チャージしているかに応じて変化

    execute if score $burst_alt.id ui_temp matches 301 if score $burst_alt ui_temp >= $burst.max ui_temp run scoreboard players set $particle.fly ui_temp 12
    execute if score $burst_alt.id ui_temp matches 301 if score $burst_alt ui_temp >= $burst.max ui_temp run scoreboard players set $speed.plus ui_temp -10
    execute if score $burst_alt.id ui_temp matches 301 if score $burst_alt ui_temp >= $burst.max ui_temp run scoreboard players operation $damage ui_temp *= #2 ui_num
    execute if score $burst_alt.id ui_temp matches 301 if score $burst_alt ui_temp >= $burst.max ui_temp run scoreboard players remove $range ui_temp 5
    execute if score $burst_alt.id ui_temp matches 301 if score $burst_alt ui_temp >= $burst.max ui_temp store result score $ink.main ui_temp run data get storage ui:gun temp.MainChargeInkUse

    execute if score $burst_alt.id ui_temp matches 302 if score $burst_alt ui_temp >= $burst.max ui_temp run scoreboard players set $particle.fly ui_temp 12
    execute if score $burst_alt.id ui_temp matches 302 if score $burst_alt ui_temp >= $burst.max ui_temp run scoreboard players set $speed.plus ui_temp -5
    execute if score $burst_alt.id ui_temp matches 302 if score $burst_alt ui_temp >= $burst.max ui_temp run scoreboard players operation $damage ui_temp *= #2 ui_num
    execute if score $burst_alt.id ui_temp matches 302 if score $burst_alt ui_temp >= $burst.max ui_temp run scoreboard players remove $range ui_temp 10
    execute if score $burst_alt.id ui_temp matches 302 if score $burst_alt ui_temp >= $burst.max ui_temp store result score $ink.main ui_temp run data get storage ui:gun temp.MainChargeInkUse

    execute if score $burst_alt.id ui_temp matches 303 if score $burst_alt ui_temp < $burst.max ui_temp run scoreboard players set $burst ui_temp 2
    execute if score $burst_alt.id ui_temp matches 303 if score $burst_alt ui_temp >= $burst.max ui_temp run scoreboard players set $particle.fly ui_temp 12
    execute if score $burst_alt.id ui_temp matches 303 if score $burst_alt ui_temp >= $burst.max ui_temp run scoreboard players add $speed ui_temp 5
    execute if score $burst_alt.id ui_temp matches 303 if score $burst_alt ui_temp >= $burst.max ui_temp run scoreboard players operation $damage ui_temp *= #4 ui_num
    execute if score $burst_alt.id ui_temp matches 303 if score $burst_alt ui_temp >= $burst.max ui_temp run scoreboard players add $range ui_temp 5
    execute if score $burst_alt.id ui_temp matches 303 if score $burst_alt ui_temp >= $burst.max ui_temp store result score $ink.main ui_temp run data get storage ui:gun temp.MainChargeInkUse

    execute if score $burst_alt.id ui_temp matches 304 if score $burst_alt ui_temp >= $burst.max ui_temp run scoreboard players set $particle.fly ui_temp 12
    execute if score $burst_alt.id ui_temp matches 304 if score $burst_alt ui_temp >= $burst.max ui_temp run scoreboard players remove $speed ui_temp 20
    execute if score $burst_alt.id ui_temp matches 304 if score $burst_alt ui_temp >= $burst.max ui_temp run scoreboard players operation $damage ui_temp *= #5 ui_num
    execute if score $burst_alt.id ui_temp matches 304 if score $burst_alt ui_temp >= $burst.max ui_temp run scoreboard players add $range ui_temp 35
    execute if score $burst_alt.id ui_temp matches 304 if score $burst_alt ui_temp >= $burst.max ui_temp store result score $ink.main ui_temp run data get storage ui:gun temp.MainChargeInkUse

#