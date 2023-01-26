# 外部シールド
data merge storage tds: {temp:{Amount:1.0f,DisableParticle:true}}
execute store result storage tds: temp.Amount float 0.01 run scoreboard players get $damage ui_temp
function tds:heal
execute unless entity @s[tag=tmw_501_19_sound_shield] run playsound ui:shield player @a ~ ~ ~ 0.7 1.2 0
particle dust 0 0 1 0.7 ~ ~0.9 ~ 0.4 0.6 0.4 0 10 force
particle block lapis_block ~ ~0.9 ~ 0.4 0.6 0.4 0 5 force
tag @s add tmw_501_19_sound_shield
tellraw @s {"text":"長期インパクトシールド起動"}
scoreboard players operation @s ui_tmw501_19_now_s1 -= $damage ui_temp
scoreboard players set $damage ui_temp 0