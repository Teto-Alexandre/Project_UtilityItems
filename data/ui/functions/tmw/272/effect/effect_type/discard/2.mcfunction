# varをコピーして回数を増やす
scoreboard players operation $var_temp ui_temp = $var ui_temp

execute if score $var_temp ui_temp matches 1.. run function ui:tmw/272/effect/effect_type/discard/3

tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"がカードを"},{"score":{"name": "$condition_checker","objective": "ui_temp"}},{"text": "枚捨てた！"}]