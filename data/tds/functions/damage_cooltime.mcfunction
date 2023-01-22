# ダメージクールダウン
scoreboard players remove @s tds_damage_cooltime_time 1
execute if score @s tds_damage_cooltime_time matches ..0 run scoreboard players reset @s tds_damage_cooltime_amount
execute if score @s tds_damage_cooltime_time matches ..0 run scoreboard players reset @s tds_damage_cooltime_time