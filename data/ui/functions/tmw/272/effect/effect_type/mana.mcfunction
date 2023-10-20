# 回復する（回復回数を計算するテスト）
data merge storage ui:tmw272 {temp:{input:"mana"}}
function ui:tmw/272/common/inport_text

scoreboard players operation @e[tag=tmw272_temp_card_effect_target] ui_tmw272_mana += $var ui_temp
execute if data storage ui:temp temp.effect{effect_mode:"="} run scoreboard players operation @e[tag=tmw272_temp_card_effect_target] ui_tmw272_mana = $var ui_temp

execute as @e[tag=tmw272_temp_card_effect_target] run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"が"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text": "になった！"}]