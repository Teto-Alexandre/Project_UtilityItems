#
execute rotated ~ 0 run teleport @s ~ ~ ~ ~17 ~

scoreboard players operation $is_temp ui_temp = $is ui_temp
scoreboard players operation $is_temp ui_temp %= #6 ui_num
execute if score $is_temp ui_temp matches 1 at @s run function ui:common/particle/ss/downer/10008/period
execute if score $is_temp ui_temp matches 1 at @s as @e[distance=..8,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10008/damage

#
execute if score $is ui_temp matches 1..60 if score $is_temp ui_temp matches 1 run data merge storage ui:common {input:{Mode:"create",Var:-10009,Rand:{X:90,Y:0,Z:90}}}
execute if score $is ui_temp matches 1..60 if score $is_temp ui_temp matches 1 positioned ~ ~ ~ run function ui:common/particle

#
#say @e[predicate=ui:load_unhurtable,tag=!ui_temp_team]
#execute if score $is ui_temp matches 42 at @s as @e[distance=..4,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10008/damage
#execute if score $is ui_temp matches 42 at @s run function ui:common/particle/ss/downer/10008/damage_area

#
execute if score $is ui_temp matches 101.. run kill @s
