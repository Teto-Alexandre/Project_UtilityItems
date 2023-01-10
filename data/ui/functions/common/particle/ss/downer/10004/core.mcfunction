#
execute store success score $success ui_temp run teleport @s @e[distance=..8,predicate=ui:load_unhurtable,tag=!ui_temp_team,sort=nearest,limit=1]
execute if score $success ui_temp matches 1 at @s rotated ~ 0 run teleport @s ^ ^0.1 ^-0.5 ~ ~
execute if score $success ui_temp matches 0 rotated ~ 0 run teleport @s ~ ~ ~ ~ ~

#
scoreboard players operation $is_temp ui_temp = $is ui_temp
scoreboard players operation $is_temp ui_temp %= #10 ui_num

#
    #say @e[predicate=ui:load_unhurtable,tag=!ui_temp_team]
    execute if score $is_temp ui_temp matches 0 as @e[distance=..2,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10004/damage

execute if score $is ui_temp matches 100 run function ui:common/particle/ss/downer/10004/final

execute if score $is_temp ui_temp matches 0 run function ui:common/particle/ss/downer/10004/period

#
execute if score $is ui_temp matches 100.. run kill @s