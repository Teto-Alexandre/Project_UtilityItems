scoreboard players operation $Attacker tds_dmg = $id ui_temp
data merge storage tds: {Damage:25.00,DamageType:11,DeathMessage:18,WeaponName:'[{"text":"サイレントエコー","color":"white","italic":"false"}]',EPF:-1,BypassArmor:3000,BypassResistance:false}
function tds:attack

particle minecraft:dust 1 1 1 1.5 ~ ~ ~ 0.5 0.5 0.5 0 10 force
particle minecraft:block iron_block ~ ~ ~ 0.5 0.5 0.5 0 10 force
playsound entity.player.hurt_freeze player @a ~ ~ ~ 1 0.8

effect give @s blindness 31 0 true
effect give @s slowness 30 2 true
effect give @s weakness 30 2 true
effect give @s mining_fatigue 30 2 true
effect give @s wither 30 0 true
effect give @s darkness 31 0 true

scoreboard players add @s ui_ct 600
