execute if score $players_count ui_temp matches 1 as @e[tag=ui_temp_players] at @s run function ui:tmw/272/match/end/1
execute if score $players_count ui_temp matches 0 run function ui:tmw/272/match/end/0

kill @s