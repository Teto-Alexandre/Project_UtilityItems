execute if score $players_count ui_temp matches 1 unless entity @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!summoned_delete] run scoreboard players set $players_count ui_temp 0
execute if score $players_count ui_temp matches 1 as @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!summoned_delete] at @s run function ui:tmw/272/match/end/1
execute if score $players_count ui_temp matches 0 run function ui:tmw/272/match/end/0

execute as @e[tag=ui_temp_players,tag=summoned_delete] run function ui:tmw/272/match/player/death.entity

kill @s