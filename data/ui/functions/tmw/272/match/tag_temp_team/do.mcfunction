tag @e[tag=ui_temp_team] remove ui_temp_team
tag @a[tag=ui_temp_team] remove ui_temp_team
execute as @e[tag=ui_temp_players,predicate=ui:load_unhurtable] if score @s ui_team = $tmw272_team ui_temp run tag @s add ui_temp_team
scoreboard players operation $tmw272_team_last_temped ui_temp = $tmw272_team ui_temp