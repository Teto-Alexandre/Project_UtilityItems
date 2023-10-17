# ダメージを与える
data merge storage ui:tmw272 {temp:{input:"strength"}}
function ui:tmw/272/common/inport_text

execute unless score @s ui_tmw272_strength matches 0 run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"は"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true}]
scoreboard players operation $var ui_temp += @s ui_tmw272_strength

data merge storage ui:tmw272 {temp:{input:"invulnerable"}}
function ui:tmw/272/common/inport_text
execute as @e[tag=tmw272_temp_card_effect_target] if score @s ui_tmw272_invulnerable matches 1.. run function ui:tmw/272/effect/effect_type/damage/invulnerable

data merge storage ui:tmw272 {temp:{input:"dodge"}}
function ui:tmw/272/common/inport_text
execute as @e[tag=tmw272_temp_card_effect_target] if score @s ui_tmw272_dodge matches 1.. run function ui:tmw/272/effect/effect_type/damage/dodge

scoreboard players operation $var_temp ui_temp = $var ui_temp
scoreboard players operation $var_temp ui_temp > #0 ui_num
execute as @e[tag=tmw272_temp_card_effect_target] run function ui:tmw/272/effect/effect_type/damage/each
