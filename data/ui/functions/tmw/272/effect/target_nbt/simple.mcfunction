# 指定のエンティティ以外をターゲットから外す
execute as @e[tag=ui_temp_players] run function ui:tmw/272/effect/target_nbt/each

scoreboard players reset $target_nbt_check ui_temp
data remove storage ui:temp temp.temp

execute unless data storage ui:temp temp.temp.invert run tag @e[tag=ui_temp_players,tag=!tmw272_temp_card_effect_target_nbt] add ui_temp_players_no_target
execute if data storage ui:temp temp.temp.invert run tag @e[tag=ui_temp_players,tag=tmw272_temp_card_effect_target_nbt] add ui_temp_players_no_target

tag @e[tag=ui_temp_players,tag=tmw272_temp_card_effect_target_nbt] remove tmw272_temp_card_effect_target_nbt