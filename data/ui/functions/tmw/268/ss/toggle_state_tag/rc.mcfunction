scoreboard players set $success ui_temp 0
execute if score $success ui_temp matches 0 if entity @s[tag=tmw_268_state_rc] store success score $success ui_temp run tag @s remove tmw_268_state_rc
execute if score $success ui_temp matches 0 if entity @s[tag=!tmw_268_state_rc] store success score $success ui_temp run tag @s add tmw_268_state_rc