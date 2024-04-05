scoreboard players set $min ui_temp -2147483648
scoreboard players set $max ui_temp 2147483647

execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.ReactiveEffects[0].reactive_effect.var_checker.min store result score $min ui_temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.ReactiveEffects[0].reactive_effect.var_checker.min 1
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.ReactiveEffects[0].reactive_effect.var_checker.max store result score $max ui_temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.ReactiveEffects[0].reactive_effect.var_checker.max 1

#tellraw @s [{"text":"["},{"score":{"name":"$min","objective":"ui_temp"}},{"text":"<="},{"score":{"name":"$var","objective":"ui_temp"}},{"text":"<="},{"score":{"name":"$max","objective":"ui_temp"}},{"text":"]"}]

scoreboard players set $reactive_effect_success ui_temp 1
execute if score $var ui_temp >= $min ui_temp if score $var ui_temp <= $max ui_temp run scoreboard players set $reactive_effect_success ui_temp 0


#tellraw @s [{"text":"["},{"score":{"name":"$reactive_effect_success","objective":"ui_temp"},"color": "yellow"},{"text":"]"}]