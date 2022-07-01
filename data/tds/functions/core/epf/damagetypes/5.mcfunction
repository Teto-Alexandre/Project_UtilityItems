# 加重属性

## ダメージ軽減

# 頭
    execute store result score $Temp tds_dmg run data get storage tds:temp armor_head.Enchantments[{id:"minecraft:protection"}].lvl
    scoreboard players operation $EPF tds_dmg += $Temp tds_dmg
# 胸
    execute store result score $Temp tds_dmg run data get storage tds:temp armor_chest.Enchantments[{id:"minecraft:protection"}].lvl
    scoreboard players operation $EPF tds_dmg += $Temp tds_dmg
# 脚
    execute store result score $Temp tds_dmg run data get storage tds:temp armor_legs.Enchantments[{id:"minecraft:protection"}].lvl
    scoreboard players operation $EPF tds_dmg += $Temp tds_dmg
# 足
    execute store result score $Temp tds_dmg run data get storage tds:temp armor_feet.Enchantments[{id:"minecraft:protection"}].lvl
    scoreboard players operation $EPF tds_dmg += $Temp tds_dmg

## 落下耐性

# 頭
    execute store result score $Temp tds_dmg run data get storage tds:temp armor_head.Enchantments[{id:"minecraft:feather_falling"}].lvl 3
    scoreboard players operation $EPF tds_dmg += $Temp tds_dmg
# 胸
    execute store result score $Temp tds_dmg run data get storage tds:temp armor_chest.Enchantments[{id:"minecraft:feather_falling"}].lvl 3
    scoreboard players operation $EPF tds_dmg += $Temp tds_dmg
# 脚
    execute store result score $Temp tds_dmg run data get storage tds:temp armor_legs.Enchantments[{id:"minecraft:feather_falling"}].lvl 3
    scoreboard players operation $EPF tds_dmg += $Temp tds_dmg
# 足
    execute store result score $Temp tds_dmg run data get storage tds:temp armor_feet.Enchantments[{id:"minecraft:feather_falling"}].lvl 3
    scoreboard players operation $EPF tds_dmg += $Temp tds_dmg