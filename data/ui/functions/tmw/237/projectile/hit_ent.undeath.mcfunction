# 遠隔攻撃命中判定 - 死に至らない

# ダメージ本体
    scoreboard players set $Return tds_dmg 0
    scoreboard players set $Lethal tds_dmg 0
    data merge storage tds: {temp:{Damage:1.00,DamageType:1,DeathMessage:-1,WeaponName:"",EPF:-1,BypassArmor:0,BypassResistance:false}}
    #tellraw @a [{"text":"Attacker:"},{"score":{"name":"$id","objective":"ui_temp"}},{"text":" Team:"},{"score":{"name":"$team","objective":"ui_temp"}},{"text":" Obj:"},{"score":{"name":"$Attacker","objective":"tds_dmg"}}]
    execute store result storage tds: temp.Damage float 0.1 run scoreboard players get $damage ui_temp
    execute store result storage tds: temp.DamageType int 1 run scoreboard players get $damage_type ui_temp
    scoreboard players operation $Attacker tds_dmg = $id ui_temp
    data modify storage tds: temp.WeaponName set from storage ui:temp Name
    function tds:attack
    scoreboard players operation $Return tds_dmg /= #2000 ui_num
    execute if score $damage_type ui_temp matches 2 run scoreboard players operation @s tds_fire += $Return tds_dmg
    execute if score $damage_type ui_temp matches 6 run scoreboard players operation @s tds_cold += $Return tds_dmg
