# varをコピーして回数を増やす
scoreboard players operation $var_temp ui_temp = $var ui_temp
scoreboard players set $condition_checker_temp ui_temp 0

execute unless data storage ui:temp temp.effect.macro if score $var_temp ui_temp matches 1.. run function ui:tmw/272/effect/effect_type/discard/3
execute if data storage ui:temp temp.effect.macro if score $var_temp ui_temp matches 1.. run function ui:tmw/272/effect/effect_type/discard/3_macro with storage ui:temp temp.effect

tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"がカードを"},{"score":{"name": "$condition_checker_temp","objective": "ui_temp"}},{"text": "枚捨てた！"}]
scoreboard players operation @s ui_tmw272_discard += $condition_checker_temp ui_temp

execute unless data storage ui:temp temp.effect.no_condition run scoreboard players operation $condition_checker ui_temp += $condition_checker_temp ui_temp
scoreboard players reset $condition_checker_temp ui_temp