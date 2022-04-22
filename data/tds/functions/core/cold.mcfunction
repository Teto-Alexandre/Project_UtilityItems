
# 冷気をスタック

    scoreboard players operation $temp tds_cold = $Damage tds_dmg
    scoreboard players operation $temp tds_cold /= $20000 tds_dmg
    scoreboard players operation @s tds_cold += $temp tds_cold