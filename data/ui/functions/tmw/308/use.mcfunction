#血を増やす
    scoreboard players operation $blood ui_temp = #2 ui_num
    execute store result score $blood_now ui_temp run data get entity @s Inventory[{Slot:-106b}].tag.tmw.blood.amount
    scoreboard players operation $blood ui_temp += $blood_now ui_temp
    execute store result score $blood_max ui_temp run data get entity @s Inventory[{Slot:-106b}].tag.tmw.blood.max
    execute store result storage ui:temp blood int 1 run scoreboard players operation $blood ui_temp < $blood_max ui_temp
    scoreboard players operation $blood_calc ui_temp = $blood_max ui_temp
    scoreboard players operation $blood_calc ui_temp -= $blood ui_temp
    scoreboard players operation $blood_calc ui_temp *= #24 ui_num
    execute store result storage ui:temp damage int 1 run scoreboard players operation $blood_calc ui_temp /= $blood_max ui_temp
    item modify entity @s weapon.offhand ui:tmw307

#ヒット音
    particle dust 1 0 0 1 ~ ~1 ~ 0.3 0.6 0.3 0 15
    playsound minecraft:block.redstone_torch.burnout player @a ~ ~ ~ 1 2

#ダメージ本体
    data merge storage tds: {Damage:2.00,DamageType:-1,DeathMessage:10,WeaponName:"",EPF:0,BypassArmor:true,BypassResistance:true}
    execute at @s run function tds:attack