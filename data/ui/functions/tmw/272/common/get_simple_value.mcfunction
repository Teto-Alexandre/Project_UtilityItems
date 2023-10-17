# 数値を入れる
execute if data storage ui:tmw272 temp{input:"health_max"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_health_max
execute if data storage ui:tmw272 temp{input:"health"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_health
execute if data storage ui:tmw272 temp{input:"damage"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_damage
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
execute if data storage ui:tmw272 temp{input:"seal"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_seal
execute if data storage ui:tmw272 temp{input:"invulnerable"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_invulnerable
execute if data storage ui:tmw272 temp{input:"only_one"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_only_one
execute if data storage ui:tmw272 temp{input:"energy"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_energy
execute if data storage ui:tmw272 temp{input:"construct"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_construct
execute if data storage ui:tmw272 temp{input:"void"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_void
execute if data storage ui:tmw272 temp{input:"myth"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_myth
execute if data storage ui:tmw272 temp{input:"taint"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_taint
execute if data storage ui:tmw272 temp{input:"insanity"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_insanity
execute if data storage ui:tmw272 temp{input:"stun"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_stun
execute if data storage ui:tmw272 temp{input:"shock"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_shock
execute if data storage ui:tmw272 temp{input:"freeze"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_freeze
execute if data storage ui:tmw272 temp{input:"undying"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_undying
execute if data storage ui:tmw272 temp{input:"undying_count"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_undying_count
execute if data storage ui:tmw272 temp{input:"lethal_range"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_lethal_range
execute if data storage ui:tmw272 temp{input:"soul_break"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_soul_break
execute if data storage ui:tmw272 temp{input:"dodge"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_dodge
execute if data storage ui:tmw272 temp{input:"dodge_next"} run scoreboard players operation $tmw272_get_value ui_temp = @s ui_tmw272_dodge_next

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

data remove storage ui:tmw272 temp