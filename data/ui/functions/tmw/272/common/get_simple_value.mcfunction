# 数値を入れる
execute if data storage ui:tmw272 temp{input:"health"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_health
execute if data storage ui:tmw272 temp{input:"mana"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_mana
execute if data storage ui:tmw272 temp{input:"mana_max"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_mana_max
execute if data storage ui:tmw272 temp{input:"var"} run scoreboard players operation $tmw272_get_value ui_temp = $var ui_temp
execute if data storage ui:tmw272 temp{input:"rand"} run scoreboard players operation $tmw272_get_value ui_temp = $rand ui_temp
execute if data storage ui:tmw272 temp{input:"hand_num"} run execute store result score $tmw272_get_value ui_temp run data get entity @s Inventory
execute if data storage ui:tmw272 temp{input:"self_hurt"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_self_hurt
execute if data storage ui:tmw272 temp{input:"candle"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_candle
execute if data storage ui:tmw272 temp{input:"index_count"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_index_count
execute if data storage ui:tmw272 temp{input:"more_attack_more"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_more_attack_more
execute if data storage ui:tmw272 temp{input:"curse"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_curse
execute if data storage ui:tmw272 temp{input:"blessing"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_blessing
execute if data storage ui:tmw272 temp{input:"turn_count"} run scoreboard players operation $tmw272_get_value ui_temp = @e[tag=tmw272_active_match] ui_tmw272_match_round

# フィードバック
execute if data storage ui:tmw272 temp{input:"health"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"HP","color":"red"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
execute if data storage ui:tmw272 temp{input:"mana"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"Mana","color":"aqua"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
execute if data storage ui:tmw272 temp{input:"mana_max"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"Mana_Max","color":"aqua"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute if data storage ui:tmw272 temp{input:"var"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"text":"単独変数"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute if data storage ui:tmw272 temp{input:"rand"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"text":"ランダム値"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
execute if data storage ui:tmw272 temp{input:"hand_num"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"手札枚数"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
execute if data storage ui:tmw272 temp{input:"self_hurt"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"自傷回数","color":"red"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
execute if data storage ui:tmw272 temp{input:"candle"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"蠟燭","color":"yellow"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
execute if data storage ui:tmw272 temp{input:"index_count"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"数符","color":"gray"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
execute if data storage ui:tmw272 temp{input:"more_attack_more"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"モア・アタック・モア","color":"gray"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
execute if data storage ui:tmw272 temp{input:"curse"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"呪い","color":"light_purple"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
execute if data storage ui:tmw272 temp{input:"blessing"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"祝福","color":"yellow"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
execute if data storage ui:tmw272 temp{input:"turn_count"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"text":"経過ターン数","color":"gray"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]

data remove storage ui:tmw272 temp