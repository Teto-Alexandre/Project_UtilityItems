# プロテクションのEPFを取得します

# 明示的に0に設定
    scoreboard players set $EPF tds_dmg 0
# 足
    execute store result score $Temp tds_dmg run data get entity @s ArmorItems[0].tag.Enchantments[{id:"minecraft:protection"}].lvl
    scoreboard players operation $EPF tds_dmg += $Temp tds_dmg
# 脚
    execute store result score $Temp tds_dmg run data get entity @s ArmorItems[1].tag.Enchantments[{id:"minecraft:protection"}].lvl
    scoreboard players operation $EPF tds_dmg += $Temp tds_dmg
# 胸
    execute store result score $Temp tds_dmg run data get entity @s ArmorItems[2].tag.Enchantments[{id:"minecraft:protection"}].lvl
    scoreboard players operation $EPF tds_dmg += $Temp tds_dmg
# 頭
    execute store result score $Temp tds_dmg run data get entity @s ArmorItems[3].tag.Enchantments[{id:"minecraft:protection"}].lvl
    scoreboard players operation $EPF tds_dmg += $Temp tds_dmg
# リセット
    scoreboard players reset $Temp tds_dmg