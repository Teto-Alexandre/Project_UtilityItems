$execute store result score $id_overwrite_temp ui_temp run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.AfterEffects[{id:"$(id)"}]
execute if score $id_overwrite_temp ui_temp matches 1.. unless data storage ui:temp temp.effect.mute run tellraw @s ["",{"text":" ▼ ","color":"gray"},{"text":"持続効果が上書きされました"}]
scoreboard players reset $id_overwrite_temp ui_temp