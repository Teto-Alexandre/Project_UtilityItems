# 体力を減らす（その回数を計算するテスト）
execute if score @s ui_tmw272_shield matches 0 run scoreboard players set $effect_type_damage_info ui_temp 1
execute unless score @s ui_tmw272_shield matches 0 run scoreboard players set $effect_type_damage_info ui_temp 2
execute if entity @s[tag=ui_temp_player] run scoreboard players set $effect_type_damage_info ui_temp 1
execute if score $effect_type_damage_info ui_temp matches 1 run scoreboard players operation @s ui_tmw272_health -= $var ui_temp
execute if score $effect_type_damage_info ui_temp matches 2 run scoreboard players operation @s ui_tmw272_shield -= $var ui_temp
execute run tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"selector":"@s"},{"text":"のHPが"},{"score":{"name": "@s","objective": "ui_tmw272_health"}},{"text": "になりました"}]

execute if score $effect_type_damage_info ui_temp matches 1 run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"に"},{"score":{"name": "$var","objective": "ui_temp"}},{"text": "ダメージ！"}]
execute if score $effect_type_damage_info ui_temp matches 2 run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"【シールド】","color":"aqua"},{"text":"に"},{"score":{"name": "$var","objective": "ui_temp"}},{"text": "ダメージ！"}]

execute if score @s ui_tmw272_shield matches ..-1 run scoreboard players set $effect_type_damage_info ui_temp 3
execute if score $effect_type_damage_info ui_temp matches 3 run scoreboard players operation @s ui_tmw272_health += @s ui_tmw272_shield
execute if score $effect_type_damage_info ui_temp matches 3 run scoreboard players operation @s ui_tmw272_shield *= #-1 ui_num
execute if score $effect_type_damage_info ui_temp matches 3 run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"text":"【シールド】","color":"aqua"},{"text":"が崩壊し"},{"selector":"@s"},{"text":"に"},{"score":{"name": "@s","objective": "ui_tmw272_shield"}},{"text": "ダメージ！"}]
execute if score $effect_type_damage_info ui_temp matches 3 run scoreboard players set @s ui_tmw272_shield 0

execute if score $effect_type_damage_info ui_temp matches 2 at @s run playsound ui:shield_m player @a ~ ~ ~ 0.7 1.2 0
execute if score $effect_type_damage_info ui_temp matches 2 at @s run particle dust 0 0 1 1 ~ ~0.9 ~ 0.4 0.6 0.4 0 10 force
execute if score $effect_type_damage_info ui_temp matches 2 at @s run particle block lapis_block ~ ~0.9 ~ 0.4 0.6 0.4 0 5 force

execute if score $effect_type_damage_info ui_temp matches 3 at @s run playsound block.glass.break player @a ~ ~ ~ 0.7 0.5 0
execute if score $effect_type_damage_info ui_temp matches 3 at @s run playsound block.glass.break player @a ~ ~ ~ 0.7 0.8 0
execute if score $effect_type_damage_info ui_temp matches 3 at @s run particle dust 0 0 1 1 ~ ~0.9 ~ 0.4 0.6 0.4 0 15 force
execute if score $effect_type_damage_info ui_temp matches 3 at @s run particle block lapis_block ~ ~0.9 ~ 0.4 0.6 0.4 0 10 force

# 自傷回数を増やす
scoreboard players add @e[tag=tmw272_temp_card_effect_target,tag=ui_temp_player] ui_tmw272_self_hurt 1

#
scoreboard players reset $effect_type_damage_info ui_temp