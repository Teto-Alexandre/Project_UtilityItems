execute as @e[tag=tmw272_active] if score @s ui_tmw272_link_id = $link_id ui_temp run tag @s add ui_temp_players
execute as @e[tag=tmw272_match] run tag @s add tmw272_active_match