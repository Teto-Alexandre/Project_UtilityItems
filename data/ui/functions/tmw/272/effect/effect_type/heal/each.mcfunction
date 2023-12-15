scoreboard players operation $var_temp ui_temp = $var ui_temp

# 希望
data merge storage ui:tmw272 {temp:{input:"hope"}}
function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
execute unless data storage ui:temp temp.effect.no_hope run execute unless score @s ui_tmw272_hope matches 0 run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"は"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true}]
execute unless data storage ui:temp temp.effect.no_hope run scoreboard players operation $var_temp ui_temp += @s ui_tmw272_hope

# 下限設定
execute unless data storage ui:temp temp.effect.under_zero run scoreboard players operation $var_temp ui_temp > #0 ui_num

# 空腹の解除方法は回復
execute if score @s ui_tmw272_hunger matches 1.. if score $var_temp ui_temp matches 1.. run function ui:tmw/272/effect/effect_type/heal/hunger

# 回復する（回復回数を計算するテスト）
scoreboard players operation @s ui_tmw272_health += $var_temp ui_temp
execute run tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"selector":"@s"},{"text":"のHPが"},{"score":{"name": "@s","objective": "ui_tmw272_health"}},{"text": "になりました"}]

execute run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"が"},{"score":{"name": "$var_temp","objective": "ui_temp"}},{"text": "回復！"}]
execute if entity @e[tag=tmw272_temp_card_effect_target,tag=ui_temp_player] run scoreboard players operation @e[tag=ui_temp_player] ui_tmw272_self_heal += $var_temp ui_temp
execute if entity @e[tag=tmw272_temp_card_effect_target,tag=!ui_temp_player] run scoreboard players operation @e[tag=ui_temp_player] ui_tmw272_other_heal += $var_temp ui_temp
