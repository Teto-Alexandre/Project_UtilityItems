execute unless data storage ui:temp temp.effect.mute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.DeathEffects[-1].name run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の","color":"gray"},{"text":"[","color":"white"},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.DeathEffects[-1].name","interpret": true},{"text":"]の効果が上書きされた！"}]
execute unless data storage ui:temp temp.effect.mute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.DeathEffects[-1].name run tellraw @a[tag=ui_temp_players] ["",{"text":"   ","color":"gray"},{"selector":"@s"},{"text":"の持続効果の1つが上書きされた！"}]
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.DeathEffects[-1] merge from storage ui:temp temp.effect.merge