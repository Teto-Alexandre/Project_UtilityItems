#

#
particle end_rod ~ ~ ~ 0 0 0 0 1 force
scoreboard players set $success ui_temp 0
scoreboard players remove $repeat ui_temp 1
execute as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,distance=..3] if data entity @s Health at @s run function ui:tmw/258/use/core
execute if score $success ui_temp matches 0 positioned ^ ^ ^0.5 if score $repeat ui_temp matches 1.. run function ui:tmw/258/use/laser