# 数値を入れる
execute if data storage ui:tmw272 temp{input:"health"} run scoreboard players operation $tmw272_get_simple_value ui_temp = @s ui_tmw272_health
execute if data storage ui:tmw272 temp{input:"mana"} run scoreboard players operation $tmw272_get_simple_value ui_temp = @s ui_tmw272_mana
execute if data storage ui:tmw272 temp{input:"mana_max"} run scoreboard players operation $tmw272_get_simple_value ui_temp = @s ui_tmw272_mana_max
execute if data storage ui:tmw272 temp{input:"var"} run scoreboard players operation $tmw272_get_simple_value ui_temp = $var ui_temp
execute if data storage ui:tmw272 temp{input:"rand"} run scoreboard players operation $tmw272_get_simple_value ui_temp = $rand ui_temp
execute if data storage ui:tmw272 temp{input:"hand_num"} run execute store result score $tmw272_get_simple_value ui_temp run data get entity @s Inventory

# フィードバック
execute if data storage ui:tmw272 temp{input:"health"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"HP","color":"red"},{"text":"は"},{"score":{"name": "$tmw272_get_simple_value","objective": "ui_temp"}}]
execute if data storage ui:tmw272 temp{input:"mana"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"Mana","color":"aqua"},{"text":"は"},{"score":{"name": "$tmw272_get_simple_value","objective": "ui_temp"}}]
execute if data storage ui:tmw272 temp{input:"mana_max"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"Mana_Max","color":"aqua"},{"text":"は"},{"score":{"name": "$tmw272_get_simple_value","objective": "ui_temp"}}]
execute if data storage ui:tmw272 temp{input:"var"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"text":"単独変数"},{"text":"は"},{"score":{"name": "$tmw272_get_simple_value","objective": "ui_temp"}}]
execute if data storage ui:tmw272 temp{input:"rand"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"text":"ランダム値"},{"text":"は"},{"score":{"name": "$tmw272_get_simple_value","objective": "ui_temp"}}]
execute if data storage ui:tmw272 temp{input:"hand_num"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"手札枚数"},{"text":"は"},{"score":{"name": "$tmw272_get_simple_value","objective": "ui_temp"}}]

data remove storage ui:tmw272 temp