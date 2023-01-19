# 外部シールド
data merge storage tds: {temp:{Amount:1.0f,DisableParticle:true}}
execute store result storage tds: temp.Amount float 0.01 run scoreboard players get $damage ui_temp
function tds:heal
tellraw @s {"text":"長期インパクトシールド起動"}
scoreboard players operation @s ui_tmw501_19_now_s1 -= $damage ui_temp
scoreboard players set $damage ui_temp 0