# ダメージを与える
execute if data storage ui:temp temp.effect.reset_condition run scoreboard players set $condition_checker ui_temp 0
scoreboard players set $deathblow_checker ui_temp 0

execute unless data storage ui:temp temp.effect.no_deathblow run data merge storage ui:tmw272 {temp:{input:"deathblow"}}
execute unless data storage ui:temp temp.effect.no_deathblow run function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
execute unless data storage ui:temp temp.effect.no_deathblow run execute unless score @s ui_tmw272_deathblow matches 0 run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"は"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true}]
execute unless data storage ui:temp temp.effect.no_deathblow run execute unless score @s ui_tmw272_deathblow matches 0 run scoreboard players set $deathblow_checker ui_temp 1

execute unless data storage ui:temp temp.effect.no_strength run data merge storage ui:tmw272 {temp:{input:"strength"}}
execute unless data storage ui:temp temp.effect.no_strength run function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
execute unless data storage ui:temp temp.effect.no_strength run execute unless score @s ui_tmw272_strength matches 0 run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"は"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true}]
execute unless data storage ui:temp temp.effect.no_strength run scoreboard players operation $var ui_temp += @s ui_tmw272_strength

execute unless data storage ui:temp temp.effect.no_charge run data merge storage ui:tmw272 {temp:{input:"charge"}}
execute unless data storage ui:temp temp.effect.no_charge run function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
execute unless data storage ui:temp temp.effect.no_charge run execute unless score @s ui_tmw272_charge matches 0 run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"は"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true}]
execute unless data storage ui:temp temp.effect.no_charge run scoreboard players operation $var ui_temp += @s ui_tmw272_charge
execute unless data storage ui:temp temp.effect.no_charge run scoreboard players set @s ui_tmw272_charge 0

execute unless data storage ui:temp temp.effect.no_invulnerable run data merge storage ui:tmw272 {temp:{input:"invulnerable"}}
execute unless data storage ui:temp temp.effect.no_invulnerable run function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
execute unless data storage ui:temp temp.effect.no_invulnerable run execute as @e[tag=tmw272_temp_card_effect_target] if score @s ui_tmw272_invulnerable matches 1.. run function ui:tmw/272/effect/effect_type/damage/invulnerable

execute unless data storage ui:temp temp.effect.no_dodge run data merge storage ui:tmw272 {temp:{input:"dodge"}}
execute unless data storage ui:temp temp.effect.no_dodge run function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
execute unless data storage ui:temp temp.effect.no_dodge run execute as @e[tag=!ui_temp_player,tag=tmw272_temp_card_effect_target] if score @s ui_tmw272_dodge matches 1.. run function ui:tmw/272/effect/effect_type/damage/dodge

scoreboard players operation $var ui_temp > #0 ui_num

execute as @e[tag=tmw272_temp_card_effect_target] run function ui:tmw/272/effect/effect_type/damage/each

scoreboard players reset $deathblow_checker ui_temp
tag @e[tag=tmw272_temp_card_effect_damage_half] remove tmw272_temp_card_effect_damage_half
