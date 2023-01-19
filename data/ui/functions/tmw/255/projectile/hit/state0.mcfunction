# 盾で防がれなかったと金

# これヘッドショット？
    execute if score $weak_mult ui_temp matches 101.. run function ui:tmw/255/projectile/hit/weak_mult
    execute if score $back_mult ui_temp matches 101.. run function ui:tmw/255/projectile/hit/back_mult

# 耐久度ダメージ
    data merge storage ui:common {input:{Damage:1}}
    scoreboard players operation $armor_damage ui_temp /= #40 ui_num
    scoreboard players operation $armor_damage ui_temp > #1 ui_num
    execute store result storage ui:common input.Damage int 1 run scoreboard players get $armor_damage ui_temp
    execute at @s run function ui:common/armor_damage

# ダメージ本体
    data merge storage tds: {temp:{Damage:1.00,DamageType:1,DeathMessage:8,WeaponName:"",EPF:-1,BypassArmor:0,BypassResistance:false}}
    #tellraw @a [{"text":"Attacker:"},{"score":{"name":"$id","objective":"ui_temp"}},{"text":" Team:"},{"score":{"name":"$team","objective":"ui_temp"}},{"text":" Obj:"},{"score":{"name":"$Attacker","objective":"tds_dmg"}}]
    execute store result storage tds: temp.Damage float 0.1 run scoreboard players get $damage ui_temp
    execute store result storage tds: temp.DamageType int 1 run scoreboard players get $damage_type ui_temp
    execute store result storage tds: temp.BypassArmor int 1 run scoreboard players get $bypass_armor ui_temp
    scoreboard players operation $Attacker tds_dmg = $id ui_temp
    data modify storage tds: temp.WeaponName set from storage ui:temp temp.Name
    data modify storage tds: temp.Owner set from storage ui:temp temp.UUID
    execute if score $def_state ui_temp matches 0 at @s run function tds:attack