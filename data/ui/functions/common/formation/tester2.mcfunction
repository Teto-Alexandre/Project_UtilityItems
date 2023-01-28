#

#
data merge storage ui:common {input:{Mode:"orbit",Num:90,Offset:0}}
execute as @e[sort=nearest,limit=1] run function ui:common/formation/

#
execute at @e[tag=ui_temp_common_formation_marker] run particle dust 1 1 1 1 ~ ~ ~ 0 0 0 0 1 force
kill @e[tag=ui_temp_common_formation_marker]
