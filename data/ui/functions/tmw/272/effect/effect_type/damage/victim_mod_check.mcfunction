# 眠気
execute unless data storage ui:temp temp.effect.no_drowsy run data merge storage ui:tmw272 {temp:{input:"drowsy"}}
execute unless data storage ui:temp temp.effect.no_drowsy run function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
execute unless data storage ui:temp temp.effect.no_drowsy unless data storage ui:temp temp.effect.mute2 run execute unless score @s ui_tmw272_drowsy matches 0 run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"は"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true}]
execute unless data storage ui:temp temp.effect.no_drowsy run scoreboard players operation $var_temp ui_temp -= @s ui_tmw272_drowsy
execute unless data storage ui:temp temp.effect.no_drowsy run scoreboard players operation $var_temp ui_temp > #0 ui_num

# 装甲
execute unless data storage ui:temp temp.effect.no_armor run data merge storage ui:tmw272 {temp:{input:"armor"}}
execute unless data storage ui:temp temp.effect.no_armor run function ui:tmw/272/common/value/inport_text with storage ui:tmw272 temp
execute unless data storage ui:temp temp.effect.no_armor unless data storage ui:temp temp.effect.mute2 run execute unless score @s ui_tmw272_armor matches 0 run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の"},{"storage":"ui:tmw272_text","nbt":"temp.name","interpret":true     ,"hoverEvent": {"action": "show_text","value":[{"storage":"ui:tmw272_text","nbt":"temp.hover","interpret":true}]}},{"text":"は"},{"storage":"ui:tmw272_text","nbt":"temp.score","interpret":true}]
execute unless data storage ui:temp temp.effect.no_armor run scoreboard players operation $var_temp ui_temp -= @s ui_tmw272_armor
execute unless data storage ui:temp temp.effect.no_armor run scoreboard players operation $var_temp ui_temp > #0 ui_num

# 停止
execute unless data storage ui:temp temp.effect.no_stop run execute if score $deathblow_checker ui_temp matches 0 if score $var_temp ui_temp matches 1.. run function ui:tmw/272/effect/effect_type/damage/stop

# 無防備
execute unless data storage ui:temp temp.effect.no_unprotected run execute unless score @s[tag=!ui_temp_player] ui_tmw272_unprotected matches 0 if score $var_temp ui_temp matches 1.. run function ui:tmw/272/effect/effect_type/damage/unprotected

# 不死
execute unless data storage ui:temp temp.effect.no_undying run execute if score $deathblow_checker ui_temp matches 1 if score $var_temp ui_temp matches 1.. if score @s ui_tmw272_undying matches 1.. run function ui:tmw/272/effect/effect_type/damage/undying
