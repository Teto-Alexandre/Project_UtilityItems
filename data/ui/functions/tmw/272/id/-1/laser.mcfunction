execute positioned ~ ~-1 ~ if entity @e[predicate=ui:load_unhurtable,tag=!ui_temp_player,distance=..1] run scoreboard players set $success ui_temp 1
particle dust 0 0 0 0.8 ~ ~-1 ~ 0 0 0 0 1 force

scoreboard players remove $range ui_temp 1
execute if score $success ui_temp matches 1 positioned ~ ~-1 ~ run function ui:tmw/272/id/-1/success
execute if score $success ui_temp matches 0 if score $range ui_temp matches 1.. positioned ^ ^ ^0.5 run function ui:tmw/272/id/-1/laser