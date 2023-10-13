# 数値を入れる
## 固定値モード
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

execute if data storage ui:tmw272 temp{input:"slowness"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_slowness = $var ui_temp
execute if data storage ui:tmw272 temp{input:"hunger"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_hunger = $var ui_temp
execute if data storage ui:tmw272 temp{input:"burn"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_burn = $var ui_temp
execute if data storage ui:tmw272 temp{input:"speed"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_speed = $var ui_temp
execute if data storage ui:tmw272 temp{input:"strength"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_strength = $var ui_temp
execute if data storage ui:tmw272 temp{input:"poison"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_poison = $var ui_temp
execute if data storage ui:tmw272 temp{input:"invisible"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_invisible = $var ui_temp
execute if data storage ui:tmw272 temp{input:"regeneration"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_regeneration = $var ui_temp
execute if data storage ui:tmw272 temp{input:"unluck"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_unluck = $var ui_temp
execute if data storage ui:tmw272 temp{input:"darkness"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_darkness = $var ui_temp
execute if data storage ui:tmw272 temp{input:"resistance"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_resistance = $var ui_temp
execute if data storage ui:tmw272 temp{input:"fire_resistance"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_fire_resistance = $var ui_temp
execute if data storage ui:tmw272 temp{input:"flying"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_flying = $var ui_temp
execute if data storage ui:tmw272 temp{input:"trade"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_trade = $var ui_temp
execute if data storage ui:tmw272 temp{input:"nausea"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_nausea = $var ui_temp
execute if data storage ui:tmw272 temp{input:"bleed"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_bleed = $var ui_temp
execute if data storage ui:tmw272 temp{input:"blindness"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_blindness = $var ui_temp
execute if data storage ui:tmw272 temp{input:"glowing"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_glowing = $var ui_temp
execute if data storage ui:tmw272 temp{input:"luck"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_luck = $var ui_temp
execute if data storage ui:tmw272 temp{input:"wither"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_wither = $var ui_temp

execute if data storage ui:tmw272 temp{input:"turn_count"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @e[tag=tmw272_active_match] ui_tmw272_match_round = $var ui_temp
#execute if data storage ui:tmw272 temp{input:"repeat"} run execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects_Active[0].repeat int 1 run scoreboard players get $var ui_temp

execute if data storage ui:tmw272 temp{input:"temp1"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_temp1 = $var ui_temp
execute if data storage ui:tmw272 temp{input:"temp2"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_temp2 = $var ui_temp
execute if data storage ui:tmw272 temp{input:"temp3"} if data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_temp3 = $var ui_temp

## 加算モード
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

execute if data storage ui:tmw272 temp{input:"slowness"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_slowness += $var ui_temp
execute if data storage ui:tmw272 temp{input:"hunger"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_hunger += $var ui_temp
execute if data storage ui:tmw272 temp{input:"burn"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_burn += $var ui_temp
execute if data storage ui:tmw272 temp{input:"speed"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_speed += $var ui_temp
execute if data storage ui:tmw272 temp{input:"strength"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_strength += $var ui_temp
execute if data storage ui:tmw272 temp{input:"poison"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_poison += $var ui_temp
execute if data storage ui:tmw272 temp{input:"invisible"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_invisible += $var ui_temp
execute if data storage ui:tmw272 temp{input:"regeneration"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_regeneration += $var ui_temp
execute if data storage ui:tmw272 temp{input:"unluck"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_unluck += $var ui_temp
execute if data storage ui:tmw272 temp{input:"darkness"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_darkness += $var ui_temp
execute if data storage ui:tmw272 temp{input:"resistance"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_resistance += $var ui_temp
execute if data storage ui:tmw272 temp{input:"fire_resistance"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_fire_resistance += $var ui_temp
execute if data storage ui:tmw272 temp{input:"flying"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_flying += $var ui_temp
execute if data storage ui:tmw272 temp{input:"trade"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_trade += $var ui_temp
execute if data storage ui:tmw272 temp{input:"nausea"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_nausea += $var ui_temp
execute if data storage ui:tmw272 temp{input:"bleed"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_bleed += $var ui_temp
execute if data storage ui:tmw272 temp{input:"blindness"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_blindness += $var ui_temp
execute if data storage ui:tmw272 temp{input:"glowing"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_glowing += $var ui_temp
execute if data storage ui:tmw272 temp{input:"luck"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_luck += $var ui_temp
execute if data storage ui:tmw272 temp{input:"wither"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_wither += $var ui_temp

execute if data storage ui:tmw272 temp{input:"turn_count"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @e[tag=tmw272_active_match] ui_tmw272_match_round += $var ui_temp
#execute if data storage ui:tmw272 temp{input:"repeat"} run execute store result score $repeat ui_temp run data get storage ui:temp temp.card.repeat
#execute if data storage ui:tmw272 temp{input:"repeat"} run execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects_Active[0].repeat int 1 run scoreboard players operation $repeat ui_temp = $var ui_temp
#execute if data storage ui:tmw272 temp{input:"repeat"} run scoreboard players reset $repeat ui_temp

execute if data storage ui:tmw272 temp{input:"temp1"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_temp1 += $var ui_temp
execute if data storage ui:tmw272 temp{input:"temp2"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_temp2 += $var ui_temp
execute if data storage ui:tmw272 temp{input:"temp3"} unless data storage ui:temp temp.effect{effect_mode:"set"} run scoreboard players operation @s ui_tmw272_temp3 += $var ui_temp

## ここでプリセットからtempに数値を持ってくるfunctionを作るべき、modify_valueも同じのを使う
function ui:tmw/272/common/inport_text
## 下は例外以外を全部共通化する
execute unless data storage ui:tmw272 temp.mute run tellraw @a[tag=ui_temp_players] ["",{"text":" ▼ ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}     },{"text":"が"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true},{"text":"になった！"}]

# フィードバック
# execute unless data storage ui:tmw272 temp.mute if data storage ui:tmw272 temp{input:"health"} run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"text":"体力","color":"red"},{"text":"が"},{"score":{"name": "@s","objective": "ui_tmw272_health"}},{"text":"になった！"}]

data remove storage ui:tmw272 temp