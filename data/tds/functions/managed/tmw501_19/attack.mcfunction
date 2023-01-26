# シールドのダメージ軽減を入れる
scoreboard players set $temp tds_dmg 0

execute if score @s ui_tmw501_19_now_s1 matches 1.. run scoreboard players set $temp tds_dmg 1
execute unless data storage tds: temp.RobBypassS2 if score @s ui_tmw501_19_now_s2 matches 1.. run scoreboard players set $temp tds_dmg 2

execute if score $temp tds_dmg matches 2 run scoreboard players operation @s ui_tmw501_19_now_s2 -= $Damage tds_dmg
execute if score $temp tds_dmg matches 1 run scoreboard players operation @s ui_tmw501_19_now_s1 -= $Damage tds_dmg

execute if score $temp tds_dmg matches 1 if score $Damage tds_dmg matches ..199 unless entity @s[tag=tmw_501_19_sound_shield] run playsound ui:shield_s player @a ~ ~ ~ 0.9 0.8 0
execute if score $temp tds_dmg matches 1 if score $Damage tds_dmg matches 200.. unless entity @s[tag=tmw_501_19_sound_shield] run playsound ui:shield_m player @a ~ ~ ~ 0.7 1.2 0
execute if score $temp tds_dmg matches 1 run particle dust 0 0 1 0.7 ~ ~0.9 ~ 0.4 0.6 0.4 0 10 force
execute if score $temp tds_dmg matches 1 run particle block lapis_block ~ ~0.9 ~ 0.4 0.6 0.4 0 5 force

execute if score $temp tds_dmg matches 2 if score $Damage tds_dmg matches ..199 unless entity @s[tag=tmw_501_19_sound_shield] run playsound ui:shield_s player @a ~ ~ ~ 0.8 1.1 0
execute if score $temp tds_dmg matches 2 if score $Damage tds_dmg matches 200.. unless entity @s[tag=tmw_501_19_sound_shield] run playsound ui:shield_m player @a ~ ~ ~ 0.6 1.6 0
execute if score $temp tds_dmg matches 2 run particle dust 0 1 1 0.7 ~ ~0.9 ~ 0.4 0.6 0.4 0 10 force
execute if score $temp tds_dmg matches 2 run particle block diamond_block ~ ~0.9 ~ 0.4 0.6 0.4 0 5 force

execute if score $temp tds_dmg matches 1..2 run scoreboard players set $Damage tds_dmg 0

execute if score $temp tds_dmg matches 1..2 run tag @s add tmw_501_19_sound_shield