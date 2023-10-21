# 回復する
data merge storage ui:tmw272 {temp:{input:"hope"}}
function ui:tmw/272/common/inport_text

execute unless data storage ui:temp temp.effect.no_hope run execute unless score @s ui_tmw272_hope matches 0 run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"は"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true}]
execute unless data storage ui:temp temp.effect.no_hope run scoreboard players operation $var ui_temp += @s ui_tmw272_hope

execute as @e[tag=tmw272_temp_card_effect_target] run function ui:tmw/272/effect/effect_type/heal/each
