scoreboard players set $check ui_temp 1

execute if entity @s[tag=ui_proj_pierce_entity] run function ui:tmw/255/projectile/hit/ff/check.pierce_entity

execute if score $check ui_temp matches 1 run function ui:tmw/255/projectile/ff/hit