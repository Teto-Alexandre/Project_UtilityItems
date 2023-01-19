# もしアンデッドなら大ダメージ

# ダメージ本体
    data merge storage tds: {temp:{Damage:1.00,DamageType:9,DeathMessage:5,WeaponName:"",EPF:-1,BypassArmor:1500,BypassResistance:false}}
    execute store result storage tds: temp.Damage float 0.1 run scoreboard players get $level ui_temp
    scoreboard players operation $Attacker tds_dmg = $id ui_temp
    data modify storage tds: temp.WeaponName set from storage ui:temp temp.Name
    data modify storage tds: temp.Owner set from storage ui:temp temp.UUID
    function tds:attack

#
    execute if score $level ui_temp matches 30.. at @e[tag=ui_temp_this] run particle soul_fire_flame ~ ~ ~ 0.3 0.5 0.3 0 3 force