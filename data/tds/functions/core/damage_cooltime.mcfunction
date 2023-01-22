# ダメージクールタイムを使用
    scoreboard players operation $DamageTemp tds_dmg = $Damage tds_dmg
    scoreboard players operation $Damage tds_dmg -= @s tds_damage_cooltime_amount
    scoreboard players operation @s tds_damage_cooltime_amount = $DamageTemp tds_dmg

