scoreboard players operation $var_temp ui_temp = $var ui_temp

# 希望
execute unless data storage ui:temp temp.effect.indep run data merge storage ui:tmw272 {temp:{input:"hope"}}
execute unless data storage ui:temp temp.effect.indep run function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
execute unless data storage ui:temp temp.effect.indep run execute unless data storage ui:temp temp.effect.no_hope run execute unless score @s ui_tmw272_hope matches 0 run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"は"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true}]
execute unless data storage ui:temp temp.effect.indep run execute unless data storage ui:temp temp.effect.no_hope run scoreboard players operation $var_temp ui_temp += @s ui_tmw272_hope

scoreboard players operation $var_temp_/2 ui_temp = $var_temp ui_temp
scoreboard players operation $var_temp_/2 ui_temp /= #2 ui_num

# 重傷
execute unless data storage ui:temp temp.effect.indep if score @s ui_tmw272_wound matches 1.. unless data storage ui:temp temp.effect.no_wound if score $var_temp ui_temp matches 1.. run function ui:tmw/272/effect/effect_type/heal/wound

# 下限設定
execute unless data storage ui:temp temp.effect.under_zero run scoreboard players operation $var_temp ui_temp > #0 ui_num

# 空腹の解除方法は回復
execute unless data storage ui:temp temp.effect.indep if score @s ui_tmw272_hunger matches 1.. if score $var_temp ui_temp matches 1.. run function ui:tmw/272/effect/effect_type/heal/hunger

#
execute if score $var_temp ui_temp matches ..-1 run scoreboard players add @s[tag=ui_temp_player] ui_tmw272_decay 1

# 回復する（回復回数を計算するテスト）
scoreboard players operation @s ui_tmw272_health += $var_temp ui_temp

execute run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"が"},{"score":{"name": "$var_temp","objective": "ui_temp"}},{"text": "回復！"}]
execute if entity @e[tag=tmw272_temp_card_effect_target,tag=ui_temp_player] run scoreboard players operation @e[tag=ui_temp_player] ui_tmw272_self_heal += $var_temp ui_temp
execute if entity @e[tag=tmw272_temp_card_effect_target,tag=!ui_temp_player] run scoreboard players operation @e[tag=ui_temp_player] ui_tmw272_other_heal += $var_temp ui_temp

scoreboard players reset $var_temp_/2 ui_temp