# ターゲット全員で体力を平均化する
function ui:tmw/272/common/count_targets

scoreboard players set $health_average ui_temp 0
execute as @e[tag=tmw272_temp_card_effect_target] run scoreboard players operation $health_average ui_temp += @s ui_tmw272_health
scoreboard players operation $health_average ui_temp /= $count_targets ui_temp
execute as @e[tag=tmw272_temp_card_effect_target] run scoreboard players operation @s ui_tmw272_health = $health_average ui_temp

data merge storage ui:tmw272 {temp:{input:"health"}}
function ui:tmw/272/common/inport_text

tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@e[tag=tmw272_temp_card_effect_target]"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"が"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text": "になった"}]

scoreboard players reset $count_targets ui_temp