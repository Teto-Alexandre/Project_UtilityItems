scoreboard players operation $link_id ui_temp = @s ui_tmw272_link_id
execute as @e[tag=tmw272_active] if score @s ui_tmw272_link_id = $link_id ui_temp run tag @s add ui_temp_players
execute as @e[tag=tmw272] if score @s ui_obj_id = $link_id ui_temp run tag @s add tmw272_active_match

execute unless entity @e[tag=tmw272_active_match] run function ui:tmw/272/init/_main.connection_lost