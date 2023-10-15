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
execute if data storage ui:tmw272 temp{input:"shield"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_shield
execute if data storage ui:tmw272 temp{input:"shield_next"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_shield_next
execute if data storage ui:tmw272 temp{input:"seeds"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_seeds
execute if data storage ui:tmw272 temp{input:"crops"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_crops
execute if data storage ui:tmw272 temp{input:"bullet"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_bullet

execute if data storage ui:tmw272 temp{input:"slowness"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_slowness
execute if data storage ui:tmw272 temp{input:"hunger"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_hunger
execute if data storage ui:tmw272 temp{input:"burn"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_burn
execute if data storage ui:tmw272 temp{input:"speed"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_speed
execute if data storage ui:tmw272 temp{input:"strength"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_strength
execute if data storage ui:tmw272 temp{input:"poison"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_poison
execute if data storage ui:tmw272 temp{input:"invisible"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_invisible
execute if data storage ui:tmw272 temp{input:"regeneration"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_regeneration
execute if data storage ui:tmw272 temp{input:"unluck"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_unluck
execute if data storage ui:tmw272 temp{input:"darkness"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_darkness
execute if data storage ui:tmw272 temp{input:"resistance"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_resistance
execute if data storage ui:tmw272 temp{input:"fire_resistance"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_fire_resistance
execute if data storage ui:tmw272 temp{input:"flying"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_flying
execute if data storage ui:tmw272 temp{input:"trade"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_trade
execute if data storage ui:tmw272 temp{input:"nausea"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_nausea
execute if data storage ui:tmw272 temp{input:"bleed"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_bleed
execute if data storage ui:tmw272 temp{input:"blindness"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_blindness
execute if data storage ui:tmw272 temp{input:"glowing"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_glowing
execute if data storage ui:tmw272 temp{input:"luck"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_luck
execute if data storage ui:tmw272 temp{input:"wither"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_wither
execute if data storage ui:tmw272 temp{input:"armor"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_armor

execute if data storage ui:tmw272 temp{input:"turn_count"} run scoreboard players operation $tmw272_get_value ui_temp = @e[tag=tmw272_active_match] ui_tmw272_match_round
execute if data storage ui:tmw272 temp{input:"repeat"} run execute store result score $tmw272_get_value ui_temp run data get storage ui:temp temp.card.repeat

execute if data storage ui:tmw272 temp{input:"temp1"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_temp1
execute if data storage ui:tmw272 temp{input:"temp2"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_temp2
execute if data storage ui:tmw272 temp{input:"temp3"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_temp3
execute if data storage ui:tmw272 temp{input:"condition"} run scoreboard players operation $tmw272_get_value ui_temp = $condition_checker ui_temp

## ここでプリセットからtempに数値を持ってくるfunctionを作るべき、modify_valueも同じのを使う
function ui:tmw/272/common/inport_text
## 下は例外以外を全部共通化する
execute unless data storage ui:tmw272 temp.mute run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}     },{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]

# フィードバック
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"health"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"体力","color":"red"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"mana"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"マナ","color":"aqua"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"mana_max"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"最大マナ","color":"aqua"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
##execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"var"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"text":"単独変数"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
##execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"rand"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"text":"ランダム値"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"hand_num"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"手札枚数"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"self_hurt"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"自傷","color":"red"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"candle"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"蠟燭","color":"yellow"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"index_count"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"数符","color":"gold"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"more_attack_more"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"連撃","color":"white"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"curse"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"呪い","color":"light_purple"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"blessing"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"祝福","color":"yellow"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"shield"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"シールド","color":"aqua"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"shield_next"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の次幕の"},{"text":"シールド","color":"aqua"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"seeds"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"苗","color":"green"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"crops"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"作物","color":"green"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"bullet"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"弾丸","color":"#aaaa00"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]

#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"slowness"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"simple_value.slowness.hover","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"simple_value.slowness.hover","interpret":true}]}     },{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"hunger"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"空腹","color":"#aa6600"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"burn"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"燃焼","color":"#ff6600"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"speed"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"加速","color":"#00ffaa"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"strength"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"攻撃力","color":"red"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"poison"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"毒","color":"#00aa00"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"invisible"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"透明化","color":"white"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"regeneration"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"再生","color":"#ffcc66"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"unluck"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"不運","color":"#cccc00"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"darkness"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"暗闇","color":"#0066cc"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"resistance"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"耐性","color":"blue"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"fire_resistance"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"火炎耐性","color":"#ff6600"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"flying"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"飛行","color":"#0099ff"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"trade"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"取引","color":"#66ff66"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"nausea"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"酩酊","color":"#cccc66"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"bleed"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"出血","color":"red"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"blindness"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"盲目","color":"black"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"glowing"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"発光","color":"gold"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"luck"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"幸運","color":"green"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"wither"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"枯渇","color":"dark_gray"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]

#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"turn_count"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"text":"経過ターン数","color":"gray"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"repeat"} run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"text":"この効果の発動数","color":"gray"},{"text":"は"},{"score":{"name": "$tmw272_get_value","objective": "ui_temp"}}]

data remove storage ui:tmw272 temp