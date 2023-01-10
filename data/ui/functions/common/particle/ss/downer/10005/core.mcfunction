#
execute rotated ~ 0 run teleport @s ~ ~ ~ ~ ~

#
scoreboard players operation $is_temp ui_temp = $is ui_temp
scoreboard players operation $is_temp ui_temp %= #20 ui_num

#
#say @e[predicate=ui:load_unhurtable,tag=!ui_temp_team]
execute if score $is_temp ui_temp matches 0 as @e[distance=..6,predicate=ui:load_unhurtable,tag=ui_temp_team] at @s run function ui:common/particle/ss/downer/10005/damage
execute if score $is_temp ui_temp matches 0 as @e[distance=..6,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10005/damage2

execute if score $is_temp ui_temp matches 0 run function ui:common/particle/ss/downer/10005/period

#
execute if score $is ui_temp matches 100.. run kill @s