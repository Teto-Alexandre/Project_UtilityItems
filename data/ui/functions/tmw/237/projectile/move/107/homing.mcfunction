scoreboard players remove $temp ui_temp 8
teleport @s ^ ^ ^0.1
execute if score $temp ui_temp matches 8.. at @s facing entity @a[tag=ui_temp_player] eyes run function ui:tmw/237/projectile/move/107/homing