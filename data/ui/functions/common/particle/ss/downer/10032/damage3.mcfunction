scoreboard players operation $Attacker tds_dmg = $id ui_temp
data merge storage tds: {temp:{Damage:75.00,DamageType:1,DeathMessage:14,WeaponName:'[{"text":"ミミック","color":"white","italic":"false"}]',EPF:-1,BypassArmor:0,BypassResistance:false}}
execute if score $boost ui_temp matches 1 run data modify storage tds: temp.Damage set value 150.00
function tds:attack

data merge storage tds: {temp:{Amount:5.00f,DisableParticle:true}}
execute if score $boost ui_temp matches 1 run data modify storage tds: temp.Amount set value 10.00f
execute as @a[tag=ui_temp_player] run function tds:heal
execute if score $boost ui_temp matches 1 run effect give @a[tag=ui_temp_player] strength 10 1 false

particle dust 0.6 0 0 2 ~ ~0.9 ~ 1 1 1 0 50 force
playsound ui:sword player @a ~ ~ ~ 1 0.8 0