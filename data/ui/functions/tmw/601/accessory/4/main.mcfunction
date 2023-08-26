# 肉塊の模倣

# 装着時演出
execute if entity @s[tag=tmw601_changed] run data merge storage tds: {temp:{Damage:2.00,DamageType:1,DeathMessage:-1,EPF:-1,BypassArmor:2000,BypassResistance:false}}
execute if entity @s[tag=tmw601_changed] run function tds:attack
execute if entity @s[tag=tmw601_changed] run particle dust 1 0 0 1.5 ~ ~0.9 ~ 0.4 0.4 0.4 0 20
execute if entity @s[tag=tmw601_changed] run particle firework ~ ~0.9 ~ 0 0 0 0.1 20
execute if entity @s[tag=tmw601_changed] run playsound entity.firework_rocket.blast player @a ~ ~ ~ 0.5 1
execute if entity @s[tag=tmw601_changed] run playsound entity.firework_rocket.twinkle player @a ~ ~ ~ 0.5 1

#
##execute if score @s ui_st matches 1.. unless score @s ui_ct matches 1.. run function ui:tmw/601/head/1/act
#execute store result score $time ui_temp in overworld run time query gametime
#execute store result score $time2 ui_temp run data get entity @s HurtByTimestamp
#scoreboard players operation $time ui_temp -= $time2 ui_temp
#execute if score $time ui_temp matches 200.. if score $world ui_tc matches 1 run effect give @s regeneration 1 0 true
#execute if score $time ui_temp matches 200.. if score $world ui_tc matches 1 run particle dust 0.7 0 0 1 ~ ~ ~ 0.5 0.5 0.5 0 10 force
#execute if score $time ui_temp matches 1200.. run effect give @s regeneration 1 0 true
#execute if score $time ui_temp matches 1200.. run particle dust 0.7 0 0 0.5 ~ ~ ~ 1 1 1 0 10 force
#tellraw @a {"score":{"name": "$time","objective": "ui_temp"}}
#scoreboard players reset $time ui_temp
#scoreboard players reset $time2 ui_temp
