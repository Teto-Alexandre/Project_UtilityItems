#
scoreboard players operation $is_temp ui_temp = $is ui_temp
scoreboard players operation $is_temp ui_temp %= #1 ui_num

#execute if score $is ui_temp matches 1.. if score $is_temp ui_temp matches 1 at @s run function ui:common/particle/ss/downer/10013/period
#
particle end_rod ^ ^ ^5 0 0 0 0 1 force
particle end_rod ^ ^ ^-5 0 0 0 0 1 force

#
data merge storage ui:common {input:{Mode:"orbit",Num:1,Offset:0}}
execute store result storage ui:common input.Offset int 2 run scoreboard players get $is ui_temp
function ui:common/formation/

#
#execute facing entity @e[tag=ui_temp_common_formation_marker,limit=1] feet if score $is_temp ui_temp matches 1 run function ui:common/particle/ss/downer/10022/period
execute facing entity @e[tag=ui_temp_common_formation_marker,limit=1] feet run function ui:common/particle/ss/downer/10022/period
execute as @e[tag=ui_temp_common_formation_marker,limit=1] at @s run particle end_rod ~ ~ ~ 0 0 0 0 1 force
kill @e[tag=ui_temp_common_formation_marker]

#
execute if score $is ui_temp matches 120000.. run kill @s
