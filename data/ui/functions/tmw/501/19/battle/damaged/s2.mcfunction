# 外部シールド
data merge storage tds: {temp:{Amount:1.0f,DisableParticle:true}}
execute store result storage tds: temp.Amount float 0.01 run scoreboard players get $damage ui_temp
function tds:heal
execute unless entity @s[tag=tmw_501_19_sound_shield] run playsound ui:shield player @a ~ ~ ~ 0.6 1.6 0
particle dust 0 1 1 0.7 ~ ~0.9 ~ 0.4 0.6 0.4 0 10 force
particle block diamond_block ~ ~0.9 ~ 0.4 0.6 0.4 0 5 force
tag @s add tmw_501_19_sound_shield
tellraw @s {"text":"外部インパクトシールド起動"}
scoreboard players operation @s ui_tmw501_19_now_s2 -= $damage ui_temp
scoreboard players set $damage ui_temp 0