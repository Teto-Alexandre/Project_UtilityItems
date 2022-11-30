#
    execute store result score $shotmode ui_temp run data get storage ui:gun temp.now.Shotmode
    execute store result score $chargetime ui_temp run data get storage ui:gun temp.now.Chargetime
    execute store result score $shottime ui_temp run data get storage ui:gun temp.now.Shottime
    execute store result score $chargechange ui_temp run data get storage ui:gun temp.ChargeChange
    execute store result score $shotchange ui_temp run data get storage ui:gun temp.ShotChange

# 秒数制限取得
    execute if score $basetype ui_temp matches 1 run function ui:tmw/237/basetype/burstmax/1
    execute if score $basetype ui_temp matches 2 run function ui:tmw/237/basetype/burstmax/2
    execute if score $basetype ui_temp matches 3 run function ui:tmw/237/basetype/burstmax/3
    execute if score $basetype ui_temp matches -1 run function ui:tmw/237/basetype/burstmax/sp
    execute if score $basetype ui_temp matches -2 run function ui:tmw/237/basetype/burstmax/sub

# モードチェンジ
    execute at @s if score $shotmode ui_temp matches 1 if score $shottime ui_temp > $shotchange ui_temp run function ui:tmw/237/burst/burst11.mode_1_to_2
    execute at @s if score $shotmode ui_temp matches 2 if score $chargetime ui_temp > $chargechange ui_temp run function ui:tmw/237/burst/burst11.mode_2_to_1

# なにかが　おかしいぞ
    execute unless score $shotmode ui_temp matches 1..2 run scoreboard players set $shotmode ui_temp 1

# 離すと書き込み
    execute if score $ishold ui_temp matches 2.. as @s[scores={ui_use1=1..}] run function ui:tmw/237/burst/burst7.2

# 途中チャージ
    execute if score $burst ui_temp matches 1.. as @s[scores={ui_use1=1..}] run function ui:tmw/237/burst/burst10.recharge

# タメ
    scoreboard players remove $burst.max ui_temp 1
    execute if score $ishold ui_temp matches 1.. if score @s ui_st2 matches 0 run function ui:tmw/237/burst/hold
