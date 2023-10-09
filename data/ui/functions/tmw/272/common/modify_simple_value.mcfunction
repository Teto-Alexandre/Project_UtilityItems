# 数値を入れる
execute if data storage ui:tmw272 temp{input:"health"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_health = $var ui_temp
execute if data storage ui:tmw272 temp{input:"mana"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_mana = $var ui_temp
execute if data storage ui:tmw272 temp{input:"mana_max"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_mana_max = $var ui_temp
#execute if data storage ui:tmw272 temp{input:"var"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation $var ui_temp = $var ui_temp
#execute if data storage ui:tmw272 temp{input:"rand"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation $rand ui_temp = $var ui_temp
#execute if data storage ui:tmw272 temp{input:"hand_num"} if data storage ui:temp temp.effect{effect_mode:"set"} run execute store result score $var ui_temp run data get entity @s Inventory
execute if data storage ui:tmw272 temp{input:"self_hurt"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_self_hurt = $var ui_temp
execute if data storage ui:tmw272 temp{input:"candle"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_candle = $var ui_temp
execute if data storage ui:tmw272 temp{input:"index_count"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_index_count = $var ui_temp
execute if data storage ui:tmw272 temp{input:"more_attack_more"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_more_attack_more = $var ui_temp
execute if data storage ui:tmw272 temp{input:"curse"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_curse = $var ui_temp
execute if data storage ui:tmw272 temp{input:"blessing"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_blessing = $var ui_temp
execute if data storage ui:tmw272 temp{input:"shield"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_shield = $var ui_temp
execute if data storage ui:tmw272 temp{input:"shield_next"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_shield_next = $var ui_temp
execute if data storage ui:tmw272 temp{input:"seeds"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_seeds = $var ui_temp
execute if data storage ui:tmw272 temp{input:"crops"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_crops = $var ui_temp
execute if data storage ui:tmw272 temp{input:"bullet"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_bullet = $var ui_temp
execute if data storage ui:tmw272 temp{input:"turn_count"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @e[tag=tmw272_active_match] ui_tmw272_match_round = $var ui_temp
#execute if data storage ui:tmw272 temp{input:"repeat"} run execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects_Active[0].repeat int 1 run scoreboard players get $var ui_temp
execute if data storage ui:tmw272 temp{input:"temp1"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_temp1 = $var ui_temp
execute if data storage ui:tmw272 temp{input:"temp2"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_temp2 = $var ui_temp
execute if data storage ui:tmw272 temp{input:"temp3"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_temp3 = $var ui_temp

execute if data storage ui:tmw272 temp{input:"health"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_health += $var ui_temp
execute if data storage ui:tmw272 temp{input:"mana"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_mana += $var ui_temp
execute if data storage ui:tmw272 temp{input:"mana_max"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_mana_max += $var ui_temp
#execute if data storage ui:tmw272 temp{input:"var"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation $var ui_temp += $var ui_temp
#execute if data storage ui:tmw272 temp{input:"rand"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation $rand ui_temp += $var ui_temp
#execute if data storage ui:tmw272 temp{input:"hand_num"} unless data storage ui:temp temp.effect{effect_mode:"set"} run execute store result score $var ui_temp run data get entity @s Inventory
execute if data storage ui:tmw272 temp{input:"self_hurt"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_self_hurt += $var ui_temp
execute if data storage ui:tmw272 temp{input:"candle"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_candle += $var ui_temp
execute if data storage ui:tmw272 temp{input:"index_count"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_index_count += $var ui_temp
execute if data storage ui:tmw272 temp{input:"more_attack_more"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_more_attack_more += $var ui_temp
execute if data storage ui:tmw272 temp{input:"curse"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_curse += $var ui_temp
execute if data storage ui:tmw272 temp{input:"blessing"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_blessing += $var ui_temp
execute if data storage ui:tmw272 temp{input:"shield"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_shield += $var ui_temp
execute if data storage ui:tmw272 temp{input:"shield_next"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_shield_next += $var ui_temp
execute if data storage ui:tmw272 temp{input:"seeds"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_seeds += $var ui_temp
execute if data storage ui:tmw272 temp{input:"crops"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_crops += $var ui_temp
execute if data storage ui:tmw272 temp{input:"bullet"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_bullet += $var ui_temp
execute if data storage ui:tmw272 temp{input:"turn_count"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @e[tag=tmw272_active_match] ui_tmw272_match_round += $var ui_temp
#execute if data storage ui:tmw272 temp{input:"repeat"} run execute store result score $repeat ui_temp run data get storage ui:temp temp.card.repeat
#execute if data storage ui:tmw272 temp{input:"repeat"} run execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects_Active[0].repeat int 1 run scoreboard players operation $repeat ui_temp = $var ui_temp
#execute if data storage ui:tmw272 temp{input:"repeat"} run scoreboard players reset $repeat ui_temp
execute if data storage ui:tmw272 temp{input:"temp1"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_temp1 += $var ui_temp
execute if data storage ui:tmw272 temp{input:"temp2"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_temp2 += $var ui_temp
execute if data storage ui:tmw272 temp{input:"temp3"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_temp3 += $var ui_temp

# フィードバック
execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"health"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"HP","color":"red"},{"text":"が"},{"score":{"name": "@s","objective": "ui_tmw272_health"}},{"text":"になった！"}]
execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"mana"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"Mana","color":"aqua"},{"text":"が"},{"score":{"name": "@s","objective": "ui_tmw272_mana"}},{"text":"になった！"}]
execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"mana_max"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"Mana_Max","color":"aqua"},{"text":"が"},{"score":{"name": "@s","objective": "ui_tmw272_mana_max"}},{"text":"になった！"}]
#execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"var"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"text":"単独変数"},{"text":"が"},{"score":{"name": "$var","objective": "ui_temp"}},{"text":"になった！"}]
#execute unless data storage ui:tmw272 temp.mute if @s storage ui:tmw272 ui_temp{input:"rand"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"text":"ランダム値"},{"text":"が"},{"score":{"name": "$var","objective": "ui_temp"}},{"text":"になった！"}]
#execute unless data storage ui:tmw272 temp.mute if @s storage ui:tmw272 ui_temp{input:"hand_num"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"手札枚数"},{"text":"が"},{"score":{"name": "$var","objective": @s"}},{"text":"var"}]
execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"self_hurt"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"自傷","color":"red"},{"text":"が"},{"score":{"name": "@s","objective": "ui_tmw272_self_hurt"}},{"text":"になった！"}]
execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"candle"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"蠟燭","color":"yellow"},{"text":"が"},{"score":{"name": "@s","objective": "ui_tmw272_candle"}},{"text":"になった！"}]
execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"index_count"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"数符","color":"gold"},{"text":"が"},{"score":{"name": "@s","objective": "ui_tmw272_index_count"}},{"text":"になった！"}]
execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"more_attack_more"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"連撃","color":"white"},{"text":"が"},{"score":{"name": "@s","objective": "ui_tmw272_more_attack_more"}},{"text":"になった！"}]
execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"curse"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"呪い","color":"light_purple"},{"text":"が"},{"score":{"name": "@s","objective": "ui_tmw272_curse"}},{"text":"になった！"}]
execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"blessing"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"祝福","color":"yellow"},{"text":"が"},{"score":{"name": "@s","objective": "ui_tmw272_blessing"}},{"text":"になった！"}]
execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"shield"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"シールド","color":"aqua"},{"text":"が"},{"score":{"name": "@s","objective": "ui_tmw272_shield"}},{"text":"になった！"}]
execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"shield_next"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の次幕の"},{"text":"シールド","color":"aqua"},{"text":"が"},{"score":{"name": "@s","objective": "ui_tmw272_shield_next"}},{"text":"になった！"}]
execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"seeds"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"苗","color":"green"},{"text":"が"},{"score":{"name": "@s","objective": "ui_tmw272_seeds"}},{"text":"になった！"}]
execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"crops"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"作物","color":"green"},{"text":"が"},{"score":{"name": "@s","objective": "ui_tmw272_crops"}},{"text":"になった！"}]
execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"bullet"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"弾丸","color":"#aaaa00"},{"text":"が"},{"score":{"name": "@s","objective": "ui_tmw272_bullet"}},{"text":"になった！"}]
execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"turn_count"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"text":"経過ターン数","color":"gray"},{"text":"が"},{"score":{"name": "@e[tag=tmw272_active_match,limit=1]","objective": "ui_tmw272_match_round"}},{"text":"になった！"}]
#execute if data storage ui:tmw272 temp{input:"repeat"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"text":"リピート数","color":"gray"},{"text":"が"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects_Active[0].repeat"},{"text":"になった！"}]

data remove storage ui:tmw272 temp