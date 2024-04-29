execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[-1].reactive_effect.mute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[-1].name run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の","color":"gray"},{"text":"[","color":"white"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[-1].name","interpret": true},{"text":"]が発動した！"}]
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[-1].reactive_effect.mute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[-1].name run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の持続効果の1つが発動した！"}]
#data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects_Active append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[-1]

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[-1].reactive_target_ids set value []
execute as @e[tag=tmw272_temp_card_effect_target] run function ui:tmw/272/intercept_command/modify/activate/append

execute store result storage ui:temp temp.target_ids_temp int 1 run scoreboard players get @e[tag=ui_temp_player,limit=1] ui_obj_id
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[-1].reactive_ids set value []
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[-1].reactive_ids append from storage ui:temp temp.target_ids_temp

execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[-1].reactive_effect.get_node run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[-1].reactive_node set from storage ui:temp temp.effect

data modify storage ui:temp temp.temp.effect.list set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.InterceptCommands[-1].list
execute store result score $count_command_list ui_temp run data get storage ui:temp temp.temp.effect.list
execute if score $count_command_list ui_temp matches 1.. run function ui:tmw/272/effect/effect_type/command/list.lp
scoreboard players reset $count_command_list ui_temp
data remove storage ui:temp temp.temp

function ui:tmw/272/intercept_command/modify/activate/repeat
