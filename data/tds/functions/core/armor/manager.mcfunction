# 防御力のバイパス設定

# 計算に必要な値を取得
    execute store result score $defensePoints tds_dmg run attribute @s generic.armor get 100
    execute store result score $toughness tds_dmg run attribute @s generic.armor_toughness get 100
    execute unless data storage tds: {temp:{BypassArmor:0}} store result score $Bypass tds_dmg run data get storage tds: temp.BypassArmor
    scoreboard players operation $defensePoints tds_dmg -= $Bypass tds_dmg
    scoreboard players operation $defensePoints tds_dmg > $0 tds_dmg
    scoreboard players operation $Bypass tds_dmg /= $100 tds_dmg
    scoreboard players operation $toughness tds_dmg -= $Bypass tds_dmg
    scoreboard players operation $toughness tds_dmg > $0 tds_dmg