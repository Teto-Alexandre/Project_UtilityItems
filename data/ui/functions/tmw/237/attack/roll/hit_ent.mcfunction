# 近接攻撃命中判定

# サヴァイブ検知
    scoreboard players set $survive ui_temp 0

# 重複してヒットしない
    tag @s add ui_temp_attacked

# ダメージ本体
    scoreboard players set $Return tds_dmg 0
    scoreboard players set $Lethal tds_dmg 0
    data merge storage tds: {temp:{Damage:1.00,DamageType:1,DeathMessage:9,WeaponName:"",EPF:-1,BypassArmor:0,BypassResistance:false}}
    execute store result storage tds: temp.Damage float 0.1 run scoreboard players get #temp tds_dmg
    execute store result storage tds: temp.DamageType int 1 run scoreboard players get $temp ui_bdt
    data modify storage tds: temp.WeaponName set from storage ui:temp Name
    execute if score @s ui_tmw237_survive matches 1.. at @s run function ui:tmw/237/misc/survive
    execute if score $survive ui_temp matches 0 at @s run function tds:attack
    scoreboard players operation $Return tds_dmg /= #2000 ui_num
    execute if score $temp ui_bdt matches 2 run scoreboard players operation @s tds_fire += $Return tds_dmg
    execute if score $temp ui_bdt matches 6 run scoreboard players operation @s tds_cold += $Return tds_dmg

# この攻撃で死んだら
    execute if score $Lethal tds_dmg matches 1 run function ui:tmw/237/attack/ink_explode