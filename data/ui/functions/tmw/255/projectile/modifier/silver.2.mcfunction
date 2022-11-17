# もしアンデッドなら大ダメージ

# ダメージ本体
    data merge storage tds: {Damage:1.00,DamageType:9,DeathMessage:5,WeaponName:"",EPF:-1,BypassArmor:1500,BypassResistance:false}
    execute store result score $temp ui_temp run scoreboard players get @e[tag=ui_temp_this,limit=1] ui_dmg
    scoreboard players operation $temp ui_temp < $level ui_temp
    execute store result storage tds: Damage float 1 run scoreboard players get $temp ui_temp
    scoreboard players operation $Attacker tds_dmg = $id ui_temp
    data modify storage tds: WeaponName set from storage ui:temp temp.Name
    data modify storage tds: Owner set from storage ui:temp temp.UUID
    function tds:attack

#
    execute at @e[tag=ui_temp_this] run particle soul_fire_flame ~ ~ ~ 0.3 0.5 0.3 0 3 force