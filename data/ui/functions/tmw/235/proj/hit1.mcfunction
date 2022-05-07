# Lib
    #scoreboard players operation $Knockback tds_dmg = @s ui_kb

# ダメージ本体
    data merge storage tds: {Damage:1.00,DamageType:8,DeathMessage:8,WeaponName:"",EPF:-1,BypassArmor:false,BypassResistance:false}
    execute store result storage tds: Damage float 0.1 run scoreboard players get #temp tds_dmg
    data modify storage tds: WeaponName set from storage ui:temp Name
    execute at @s run function tds:attack

# ノックバック（スコア数だけ二分探索で繰り返しスライム召喚.at）
    execute if score $Knockback tds_dmg matches 1.. unless entity @s[nbt={SelectedItem:{tag:{tmw:{anti.kb:1}}}}] unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{tmw:{anti.kb:1}}}]}] run function ui:tmw/235/proj/hit1.knockback
