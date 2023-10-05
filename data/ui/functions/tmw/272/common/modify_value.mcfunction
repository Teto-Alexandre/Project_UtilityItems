# 数値を入れる
execute if data storage ui:tmw272 temp{input:"health"} unless data storage ui:temp temp.effect{effect_mode:"add"} run scoreboard players operation @s ui_tmw272_health = $var ui_temp
execute if data storage ui:tmw272 temp{input:"mana"} unless data storage ui:temp temp.effect{effect_mode:"add"} run scoreboard players operation @s ui_tmw272_mana = $var ui_temp
execute if data storage ui:tmw272 temp{input:"mana_max"} unless data storage ui:temp temp.effect{effect_mode:"add"} run scoreboard players operation @s ui_tmw272_mana_max = $var ui_temp
#execute if data storage ui:tmw272 temp{input:"var"} unless data storage ui:temp temp.effect{effect_mode:"add"} run scoreboard players operation $var ui_temp = $var ui_temp
#execute if data storage ui:tmw272 temp{input:"rand"} unless data storage ui:temp temp.effect{effect_mode:"add"} run scoreboard players operation $rand ui_temp = $var ui_temp
#execute if data storage ui:tmw272 temp{input:"hand_num"} unless data storage ui:temp temp.effect{effect_mode:"add"} run execute store result score $var ui_temp run data get entity @s Inventory
execute if data storage ui:tmw272 temp{input:"self_hurt"} unless data storage ui:temp temp.effect{effect_mode:"add"} run scoreboard players operation @s ui_tmw272_self_hurt = $var ui_temp
execute if data storage ui:tmw272 temp{input:"candle"} unless data storage ui:temp temp.effect{effect_mode:"add"} run scoreboard players operation @s ui_tmw272_candle = $var ui_temp
execute if data storage ui:tmw272 temp{input:"index_count"} unless data storage ui:temp temp.effect{effect_mode:"add"} run scoreboard players operation @s ui_tmw272_index_count = $var ui_temp
execute if data storage ui:tmw272 temp{input:"more_attack_more"} unless data storage ui:temp temp.effect{effect_mode:"add"} run scoreboard players operation @s ui_tmw272_more_attack_more = $var ui_temp
execute if data storage ui:tmw272 temp{input:"curse"} unless data storage ui:temp temp.effect{effect_mode:"add"} run scoreboard players operation @s ui_tmw272_curse = $var ui_temp
execute if data storage ui:tmw272 temp{input:"blessing"} unless data storage ui:temp temp.effect{effect_mode:"add"} run scoreboard players operation @s ui_tmw272_blessing = $var ui_temp
execute if data storage ui:tmw272 temp{input:"turn_count"} unless data storage ui:temp temp.effect{effect_mode:"add"} run scoreboard players operation @e[tag=tmw272_active_match] ui_tmw272_match_round = $var ui_temp

execute if data storage ui:tmw272 temp{input:"health"} if data storage ui:temp temp.effect{effect_mode:"add"} run scoreboard players operation @s ui_tmw272_health += $var ui_temp
execute if data storage ui:tmw272 temp{input:"mana"} if data storage ui:temp temp.effect{effect_mode:"add"} run scoreboard players operation @s ui_tmw272_mana += $var ui_temp
execute if data storage ui:tmw272 temp{input:"mana_max"} if data storage ui:temp temp.effect{effect_mode:"add"} run scoreboard players operation @s ui_tmw272_mana_max += $var ui_temp
#execute if data storage ui:tmw272 temp{input:"var"} if data storage ui:temp temp.effect{effect_mode:"add"} run scoreboard players operation $var ui_temp += $var ui_temp
#execute if data storage ui:tmw272 temp{input:"rand"} if data storage ui:temp temp.effect{effect_mode:"add"} run scoreboard players operation $rand ui_temp += $var ui_temp
#execute if data storage ui:tmw272 temp{input:"hand_num"} if data storage ui:temp temp.effect{effect_mode:"add"} run execute store result score $var ui_temp run data get entity @s Inventory
execute if data storage ui:tmw272 temp{input:"self_hurt"} if data storage ui:temp temp.effect{effect_mode:"add"} run scoreboard players operation @s ui_tmw272_self_hurt += $var ui_temp
execute if data storage ui:tmw272 temp{input:"candle"} if data storage ui:temp temp.effect{effect_mode:"add"} run scoreboard players operation @s ui_tmw272_candle += $var ui_temp
execute if data storage ui:tmw272 temp{input:"index_count"} if data storage ui:temp temp.effect{effect_mode:"add"} run scoreboard players operation @s ui_tmw272_index_count += $var ui_temp
execute if data storage ui:tmw272 temp{input:"more_attack_more"} if data storage ui:temp temp.effect{effect_mode:"add"} run scoreboard players operation @s ui_tmw272_more_attack_more += $var ui_temp
execute if data storage ui:tmw272 temp{input:"curse"} if data storage ui:temp temp.effect{effect_mode:"add"} run scoreboard players operation @s ui_tmw272_curse += $var ui_temp
execute if data storage ui:tmw272 temp{input:"blessing"} if data storage ui:temp temp.effect{effect_mode:"add"} run scoreboard players operation @s ui_tmw272_blessing += $var ui_temp
execute if data storage ui:tmw272 temp{input:"turn_count"} if data storage ui:temp temp.effect{effect_mode:"add"} run scoreboard players operation @e[tag=tmw272_active_match] ui_tmw272_match_round += $var ui_temp

# フィードバック
execute if data storage ui:tmw272 temp{input:"health"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"HP","color":"red"},{"text":"は"},{"score":{"name": "$var","objective": "ui_temp"}},{"text":"になった！"}]
execute if data storage ui:tmw272 temp{input:"mana"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"Mana","color":"aqua"},{"text":"は"},{"score":{"name": "$var","objective": "ui_temp"}},{"text":"になった！"}]
execute if data storage ui:tmw272 temp{input:"mana_max"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"Mana_Max","color":"aqua"},{"text":"は"},{"score":{"name": "$var","objective": "ui_temp"}},{"text":"になった！"}]
#execute if data storage ui:tmw272 temp{input:"var"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"text":"単独変数"},{"text":"は"},{"score":{"name": "$var","objective": "ui_temp"}},{"text":"になった！"}]
#execute if data storage ui:tmw272 temp{input:"rand"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"text":"ランダム値"},{"text":"は"},{"score":{"name": "$var","objective": "ui_temp"}},{"text":"になった！"}]
#execute if data storage ui:tmw272 temp{input:"hand_num"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"手札枚数"},{"text":"は"},{"score":{"name": "$var","objective": "ui_temp"}},{"text":"になった！"}]
execute if data storage ui:tmw272 temp{input:"self_hurt"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"自傷回数","color":"red"},{"text":"は"},{"score":{"name": "$var","objective": "ui_temp"}},{"text":"になった！"}]
execute if data storage ui:tmw272 temp{input:"candle"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"蠟燭","color":"yellow"},{"text":"は"},{"score":{"name": "$var","objective": "ui_temp"}},{"text":"になった！"}]
execute if data storage ui:tmw272 temp{input:"index_count"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"数符","color":"gray"},{"text":"は"},{"score":{"name": "$var","objective": "ui_temp"}},{"text":"になった！"}]
execute if data storage ui:tmw272 temp{input:"more_attack_more"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"モア・アタック・モア","color":"gray"},{"text":"は"},{"score":{"name": "$var","objective": "ui_temp"}},{"text":"になった！"}]
execute if data storage ui:tmw272 temp{input:"curse"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"呪い","color":"light_purple"},{"text":"は"},{"score":{"name": "$var","objective": "ui_temp"}},{"text":"になった！"}]
execute if data storage ui:tmw272 temp{input:"blessing"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"祝福","color":"yellow"},{"text":"は"},{"score":{"name": "$var","objective": "ui_temp"}},{"text":"になった！"}]
execute if data storage ui:tmw272 temp{input:"turn_count"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"text":"経過ターン数","color":"gray"},{"text":"が"},{"score":{"name": "$var","objective": "ui_temp"}},{"text":"になった！"}]

data remove storage ui:tmw272 temp