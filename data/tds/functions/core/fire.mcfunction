
# 火をスタック

    scoreboard players operation $temp tds_fire = $Damage tds_dmg
    scoreboard players operation $temp tds_fire /= $20000 tds_dmg
    scoreboard players operation @s tds_fire += $temp tds_fire