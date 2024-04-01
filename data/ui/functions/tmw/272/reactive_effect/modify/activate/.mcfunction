execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.ReactiveEffects[0].reactive_effect.mute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.ReactiveEffects[-1].name run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の","color":"gray"},{"text":"[","color":"white"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.ReactiveEffects[-1].name","interpret": true},{"text":"]が強制発動した！"}]
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.ReactiveEffects[0].reactive_effect.mute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.ReactiveEffects[-1].name run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の持続効果の1つが強制発動した！"}]
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects_Active append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.ReactiveEffects[-1]

execute store result storage ui:temp temp.target_ids_temp int 1 run scoreboard players get @e[tag=ui_temp_player,limit=1] ui_obj_id
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects_Active[-1].reactive_ids set value []
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects_Active[-1].reactive_ids append from storage ui:temp temp.target_ids_temp

function ui:tmw/272/reactive_effect/modify/activate/repeat
