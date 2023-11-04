tag @e[tag=ui_temp_team] remove ui_temp_team
tag @a[tag=ui_temp_team] remove ui_temp_team
execute as @e[predicate=ui:load_unhurtable] if score @s ui_team = $team ui_temp run tag @s add ui_temp_team
scoreboard players operation $team_last_temped ui_temp = $team ui_temp