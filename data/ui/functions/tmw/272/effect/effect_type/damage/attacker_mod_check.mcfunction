# 必殺
execute unless data storage ui:temp temp.effect.no_deathblow run data merge storage ui:tmw272 {temp:{input:"deathblow"}}
execute unless data storage ui:temp temp.effect.no_deathblow run function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
execute unless data storage ui:temp temp.effect.no_deathblow run execute unless score @s ui_tmw272_deathblow matches 0 run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"は"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true}]
execute unless data storage ui:temp temp.effect.no_deathblow run execute unless score @s ui_tmw272_deathblow matches 0 run scoreboard players set $deathblow_checker ui_temp 1
execute unless data storage ui:temp temp.effect.no_deathblow run execute unless score @s ui_tmw272_deathblow matches 0 run scoreboard players remove @s ui_tmw272_deathblow 1

# 攻撃力
execute unless data storage ui:temp temp.effect.no_strength run data merge storage ui:tmw272 {temp:{input:"strength"}}
execute unless data storage ui:temp temp.effect.no_strength run function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
execute unless data storage ui:temp temp.effect.no_strength run execute unless score @s ui_tmw272_strength matches 0 unless data storage ui:temp temp.effect.mute2 run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"は"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true}]
execute unless data storage ui:temp temp.effect.no_strength run scoreboard players operation $var ui_temp += @s ui_tmw272_strength

# チャージ
execute unless data storage ui:temp temp.effect.no_charge run data merge storage ui:tmw272 {temp:{input:"charge"}}
execute unless data storage ui:temp temp.effect.no_charge run function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
execute unless data storage ui:temp temp.effect.no_charge run execute unless score @s ui_tmw272_charge matches 0 run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"は"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true}]
execute unless data storage ui:temp temp.effect.no_charge run scoreboard players operation $var ui_temp += @s ui_tmw272_charge
execute unless data storage ui:temp temp.effect.no_charge run scoreboard players set @s ui_tmw272_charge 0

# 増強
execute unless data storage ui:temp temp.effect.no_powerful run data merge storage ui:tmw272 {temp:{input:"powerful"}}
execute unless data storage ui:temp temp.effect.no_powerful run function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
execute unless data storage ui:temp temp.effect.no_powerful run execute if score @s ui_tmw272_powerful matches 1.. run function ui:tmw/272/effect/effect_type/damage/powerful

# 無敵
execute unless data storage ui:temp temp.effect.no_invulnerable run data merge storage ui:tmw272 {temp:{input:"invulnerable"}}
execute unless data storage ui:temp temp.effect.no_invulnerable run function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
execute unless data storage ui:temp temp.effect.no_invulnerable run execute as @e[tag=tmw272_temp_card_effect_target] if score @s ui_tmw272_invulnerable matches 1.. run function ui:tmw/272/effect/effect_type/damage/invulnerable

# 回避
execute unless data storage ui:temp temp.effect.no_dodge run data merge storage ui:tmw272 {temp:{input:"dodge"}}
execute unless data storage ui:temp temp.effect.no_dodge run function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
execute unless data storage ui:temp temp.effect.no_dodge run execute as @e[tag=!ui_temp_player,tag=tmw272_temp_card_effect_target] if score @s ui_tmw272_dodge matches 1.. run function ui:tmw/272/effect/effect_type/damage/dodge
