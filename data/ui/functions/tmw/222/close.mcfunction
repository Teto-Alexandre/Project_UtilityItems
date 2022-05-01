#エンクロージャー

particle dust 0.6 0.8 1 1 ~ ~ ~ 0.6 0.6 0.6 0 15 force

data merge entity @e[type=shulker,sort=nearest,limit=1] {Peek:0b}

data merge storage tds: {Damage:18.00,DamageType:-1,DeathMessage:13,EPF:0,BypassArmor:true,BypassResistance:false}
execute at @e[type=shulker,sort=nearest,limit=1] run function tds:attack

execute unless entity @e[type=shulker,distance=..1] run advancement grant @a[scores={ui_tmw_id=222,ui_use1=1..}] only ui:dream/tmw219_4