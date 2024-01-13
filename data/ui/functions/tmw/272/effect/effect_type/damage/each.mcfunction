scoreboard players operation $var_temp ui_temp = $var ui_temp
execute as @s[tag=tmw272_temp_card_effect_damage_half] run scoreboard players operation $var_temp ui_temp /= #2 ui_num

# 装甲
execute unless data storage ui:temp temp.effect.no_armor run data merge storage ui:tmw272 {temp:{input:"armor"}}
execute unless data storage ui:temp temp.effect.no_armor run function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
execute unless data storage ui:temp temp.effect.no_armor run execute unless score @s ui_tmw272_armor matches 0 run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"は"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true}]
execute unless data storage ui:temp temp.effect.no_armor run scoreboard players operation $var_temp ui_temp -= @s ui_tmw272_armor
execute unless data storage ui:temp temp.effect.no_armor run scoreboard players operation $var_temp ui_temp > #0 ui_num

# 停止
execute if score $deathblow_checker ui_temp matches 0 if score $var_temp ui_temp matches 1.. unless data storage ui:temp temp.effect.no_stop run function ui:tmw/272/effect/effect_type/damage/stop

# 不死
execute if score $deathblow_checker ui_temp matches 1 if score $var_temp ui_temp matches 1.. if score @s ui_tmw272_undying matches 1.. unless data storage ui:temp temp.effect.no_undying run function ui:tmw/272/effect/effect_type/damage/undying

# ダメージ
execute if score @s ui_tmw272_shield matches 0 run scoreboard players set $effect_type_damage_info ui_temp 1
execute unless score @s ui_tmw272_shield matches 0 run scoreboard players set $effect_type_damage_info ui_temp 2
execute if entity @s[tag=ui_temp_player] run scoreboard players set $effect_type_damage_info ui_temp 1
execute if data storage ui:temp temp.effect.no_shield run scoreboard players set $effect_type_damage_info ui_temp 1
execute if score $effect_type_damage_info ui_temp matches 1 run scoreboard players operation @s ui_tmw272_health -= $var_temp ui_temp
execute if score $effect_type_damage_info ui_temp matches 1 if data storage ui:temp temp.effect.add_condition run scoreboard players operation $condition_checker ui_temp += $var_temp ui_temp
execute if score $effect_type_damage_info ui_temp matches 1 run scoreboard players operation @e[tag=ui_temp_player] ui_tmw272_damage += $var_temp ui_temp
execute if score $effect_type_damage_info ui_temp matches 1 run scoreboard players operation @s ui_tmw272_damage_taken += $var_temp ui_temp
execute if score $effect_type_damage_info ui_temp matches 2 run scoreboard players operation @s ui_tmw272_shield -= $var_temp ui_temp

execute if score $effect_type_damage_info ui_temp matches 1 run data merge storage ui:tmw272 {temp:{input:"health"}}
execute if score $effect_type_damage_info ui_temp matches 2 run data merge storage ui:tmw272 {temp:{input:"shield"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp

execute run tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"が"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text": "になりました"}]

execute if score $effect_type_damage_info ui_temp matches 1 run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"に"},{"score":{"name": "$var_temp","objective": "ui_temp"}},{"text": "ダメージ！  "},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":":"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true}]
execute if score $effect_type_damage_info ui_temp matches 2 run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"に"},{"score":{"name": "$var_temp","objective": "ui_temp"}},{"text": "ダメージ！"}]

execute if entity @s[tag=!ui_temp_player] if score @s ui_tmw272_shield matches ..-1 run scoreboard players set $effect_type_damage_info ui_temp 3
execute if score $effect_type_damage_info ui_temp matches 3 run scoreboard players operation @s ui_tmw272_health += @s ui_tmw272_shield
execute if score $effect_type_damage_info ui_temp matches 3 run scoreboard players operation @s ui_tmw272_shield *= #-1 ui_num
execute if score $effect_type_damage_info ui_temp matches 3 run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"が崩壊し"},{"selector":"@s"},{"text":"に"},{"score":{"name": "@s","objective": "ui_tmw272_shield"}},{"text": "ダメージ！"}]
execute if score $effect_type_damage_info ui_temp matches 3 if data storage ui:temp temp.effect.add_condition run scoreboard players operation $condition_checker ui_temp += @s ui_tmw272_shield
execute if score $effect_type_damage_info ui_temp matches 3 run scoreboard players operation @e[tag=ui_temp_player] ui_tmw272_damage += @s ui_tmw272_shield
execute if score $effect_type_damage_info ui_temp matches 3 run scoreboard players operation @s ui_tmw272_damage_taken += @s ui_tmw272_shield
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

execute if score $effect_type_damage_info ui_temp matches 1 if score $var_temp ui_temp matches 1.. if score @s ui_tmw272_confusion matches 1.. run function ui:tmw/272/effect/effect_type/damage/confusion
execute if score $effect_type_damage_info ui_temp matches 3 if score @s ui_tmw272_confusion matches 1.. run function ui:tmw/272/effect/effect_type/damage/confusion

#
scoreboard players reset $effect_type_damage_info ui_temp