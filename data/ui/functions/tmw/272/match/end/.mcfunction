execute as @e[tag=ui_temp_players] if score @s ui_tmw272_karma matches 1.. run function ui:tmw/272/match/end/karma

execute if score $players_count ui_temp matches 1 as @e[tag=ui_temp_players,tag=!tmw272_spectate] at @s run function ui:tmw/272/match/end/1
execute if score $players_count ui_temp matches 0 run function ui:tmw/272/match/end/0

kill @s