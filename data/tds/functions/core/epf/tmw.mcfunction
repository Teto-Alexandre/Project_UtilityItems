# カスタムエンチャント

## 保護
    execute store result score $Damage tds_dmg run data get storage tds: temp.Damage 100

# 頭
    execute store result score $Temp tds_dmg run data get storage tds:temp armor_head.tmw.ench[{id:"guard"}].lvl 10
    scoreboard players operation $Damage tds_dmg -= $Temp tds_dmg
# 胸
    execute store result score $Temp tds_dmg run data get storage tds:temp armor_chest.tmw.ench[{id:"guard"}].lvl 10
    scoreboard players operation $Damage tds_dmg -= $Temp tds_dmg
# 脚
    execute store result score $Temp tds_dmg run data get storage tds:temp armor_legs.tmw.ench[{id:"guard"}].lvl 10
    scoreboard players operation $Damage tds_dmg -= $Temp tds_dmg
# 足
    execute store result score $Temp tds_dmg run data get storage tds:temp armor_feet.tmw.ench[{id:"guard"}].lvl 10
    scoreboard players operation $Damage tds_dmg -= $Temp tds_dmg

## 防御力上昇

# 頭
    execute store result score $Temp tds_dmg run data get storage tds:temp armor_head.tmw.ench[{id:"armor"}].lvl 100
    scoreboard players operation $defensePoints tds_dmg += $Temp tds_dmg
# 胸
    execute store result score $Temp tds_dmg run data get storage tds:temp armor_chest.tmw.ench[{id:"armor"}].lvl 100
    scoreboard players operation $defensePoints tds_dmg += $Temp tds_dmg
# 脚
    execute store result score $Temp tds_dmg run data get storage tds:temp armor_legs.tmw.ench[{id:"armor"}].lvl 100
    scoreboard players operation $defensePoints tds_dmg += $Temp tds_dmg
# 足
    execute store result score $Temp tds_dmg run data get storage tds:temp armor_feet.tmw.ench[{id:"armor"}].lvl 100
    scoreboard players operation $defensePoints tds_dmg += $Temp tds_dmg