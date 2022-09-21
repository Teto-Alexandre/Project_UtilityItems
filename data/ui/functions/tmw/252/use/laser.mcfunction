#
particle end_rod ~ ~ ~ 0 0 0 0 1 force
scoreboard players set $success ui_temp 0
scoreboard players remove $repeat ui_temp 1
execute if block ~ ~0.5 ~ #ui:nocol unless block ~ ~-0.5 ~ #ui:nocol run function ui:tmw/252/use/core
execute if score $success ui_temp matches 0 positioned ^ ^ ^0.5 if score $repeat ui_temp matches 1.. run function ui:tmw/252/use/laser