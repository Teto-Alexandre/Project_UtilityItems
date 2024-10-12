scoreboard players operation $var_temp ui_temp = $var ui_temp

# 鈍足によるドロー効果への妨害
execute unless entity @e[tag=tmw272_temp_steal] unless data storage ui:temp temp.effect.indep unless data storage ui:temp temp.effect.no_restraint if score @s ui_tmw272_restraint matches 1.. if score $var_temp ui_temp matches 1.. run function ui:tmw/272/effect/effect_type/draw/restraint
execute unless entity @e[tag=tmw272_temp_steal] unless data storage ui:temp temp.effect.indep unless data storage ui:temp temp.effect.no_slowness if score @s ui_tmw272_slowness matches 1.. if score $var_temp ui_temp matches 1.. run function ui:tmw/272/effect/effect_type/draw/slowness

# ドローする
scoreboard players set $cg1_common_draw_type ui_temp 0
scoreboard players operation $cg1_common_draw_num ui_temp = $var_temp ui_temp
function ui:tmw/272/common/draw/

#
execute if entity @e[tag=tmw272_temp_steal] run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@e[tag=tmw272_temp_steal]"},{"text":"が"},{"selector":"@s"},{"text":"のデッキから"},{"score":{"name": "$var_temp","objective": "ui_temp"}},{"text": "枚ドローした！"}]
execute unless entity @e[tag=tmw272_temp_steal] run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"が"},{"score":{"name": "$var_temp","objective": "ui_temp"}},{"text": "枚ドローした！"}]
