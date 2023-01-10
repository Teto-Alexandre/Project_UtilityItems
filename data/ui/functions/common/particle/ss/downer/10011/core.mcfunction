#
execute rotated ~ 0 run teleport @s ~ ~ ~ ~17 ~

scoreboard players operation $is_temp ui_temp = $is ui_temp
scoreboard players operation $is_temp ui_temp %= #2 ui_num

#
execute if score $is_temp ui_temp matches 1 run data merge storage ui:common {input:{Mode:"create",Var:-10010}}
execute if score $is_temp ui_temp matches 1 positioned ~ ~ ~ run function ui:common/particle
execute if score $is_temp ui_temp matches 1 positioned ~ ~ ~ run spreadplayers ~ ~ 0 3 false @e[type=marker,scores={ui_gpc=-10010},sort=nearest,limit=1]

#
execute if score $is ui_temp matches 201.. run kill @s
