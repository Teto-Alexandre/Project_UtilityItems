# シールドのダメージ軽減を入れる
scoreboard players set $temp tds_dmg 0

execute if score @s ui_tmw501_19_now_s1 matches 1.. run scoreboard players set $temp tds_dmg 1
execute unless data storage tds: temp.RobBypassS2 if score @s ui_tmw501_19_now_s2 matches 1.. run scoreboard players set $temp tds_dmg 2

execute if score $temp tds_dmg matches 2 run scoreboard players operation @s ui_tmw501_19_now_s2 -= $Damage tds_dmg
execute if score $temp tds_dmg matches 1 run scoreboard players operation @s ui_tmw501_19_now_s1 -= $Damage tds_dmg

execute if score $temp tds_dmg matches 1..2 run scoreboard players set $Damage tds_dmg 0

execute if score $temp tds_dmg matches 1 run tellraw @s [{"text":"長期シールド: "},{"score":{"name": "@s","objective": "ui_tmw501_19_now_s1"}}]
execute if score $temp tds_dmg matches 2 run tellraw @s [{"text":"短期シールド: "},{"score":{"name": "@s","objective": "ui_tmw501_19_now_s2"}}]