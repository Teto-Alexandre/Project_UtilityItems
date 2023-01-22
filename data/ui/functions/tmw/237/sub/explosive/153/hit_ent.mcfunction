#汎用飛び道具コモン

# サヴァイブ検知
    scoreboard players set $survive ui_temp 0

# ダメージ本体
    scoreboard players set $Return tds_dmg 0
    scoreboard players set $Lethal tds_dmg 0
    data merge storage tds: {temp:{Damage:1.00,DamageType:1,DeathMessage:14,WeaponName:'{"text":"トルネード","color":"gold"}',EPF:-1,BypassArmor:0,BypassResistance:false}}
    execute store result storage tds: temp.Damage float 0.1 run scoreboard players get #temp tds_dmg
    execute if score @s ui_tmw237_survive matches 1.. at @s run function ui:tmw/237/misc/survive
    execute if score $survive ui_temp matches 0 at @s run function tds:attack

# この攻撃で死んだら
    execute if score $Lethal tds_dmg matches 1 run function ui:tmw/237/attack/ink_explode
