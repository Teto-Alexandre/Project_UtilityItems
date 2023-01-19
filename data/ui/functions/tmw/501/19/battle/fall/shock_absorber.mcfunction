# ショックアブソーバー
data merge storage tds: {temp:{Amount:1.0f,DisableParticle:true}}
execute store result storage tds: temp.Amount float 0.01 run scoreboard players get $fall_damage ui_temp
function tds:heal
tellraw @s {"text":"ショックアブソーバー起動"}
scoreboard players operation @s ui_tmw501_19_now_shock_absorber -= $fall_damage ui_temp