execute positioned ~ ~-1 ~ if entity @e[tag=ui_temp_targetable,distance=..1] run scoreboard players set $success ui_temp 1
execute positioned ~ ~-1 ~ if entity @e[tag=ui_temp_targetable_dropper,distance=..2] run scoreboard players set $success ui_temp 2
particle dust 0 0 0 0.8 ~ ~ ~ 0 0 0 0 1 force

scoreboard players remove $range ui_temp 1
execute if score $success ui_temp matches 2 as @e[tag=ui_temp_targetable_dropper] at @s run function ui:tmw/272/id/-1/success2
execute if score $success ui_temp matches 1 positioned ~ ~-1 ~ run function ui:tmw/272/id/-1/success
execute if score $success ui_temp matches 0 if score $range ui_temp matches 1.. positioned ^ ^ ^0.5 run function ui:tmw/272/id/-1/laser