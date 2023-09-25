scoreboard players operation $link_id ui_temp = @s ui_tmw272_link_id
execute as @e[tag=tmw272_active] if score @s ui_tmw272_link_id = $link_id ui_temp run tag @s add ui_temp_players