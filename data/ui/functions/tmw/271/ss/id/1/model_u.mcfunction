data modify entity @e[tag=ui_temp_obj,tag=tmw_271_display1,limit=1] Pose merge value {Head:[0.0f,1.0f,180.0f]}
data modify entity @e[tag=ui_temp_obj,tag=tmw_271_display2,limit=1] Pose merge value {Head:[0.0f,1.0f,180.0f]}
data modify entity @e[tag=ui_temp_obj,tag=tmw_271_display3,limit=1] Pose merge value {Head:[0.0f,1.0f,180.0f]}
data modify entity @e[tag=ui_temp_obj,tag=tmw_271_display2,limit=1] Pose.Head[1] set from entity @s Rotation[0]
data modify entity @e[tag=ui_temp_obj,tag=tmw_271_display3,limit=1] Pose.Head[1] set from entity @s Rotation[0]
execute as @e[tag=ui_temp_obj,tag=tmw_271_display2,limit=1] store result entity @s Pose.Head[1] float -1 run data get entity @s Pose.Head[1]
execute as @e[tag=ui_temp_obj,tag=tmw_271_display3,limit=1] store result entity @s Pose.Head[1] float -1 run data get entity @s Pose.Head[1]
data modify entity @e[tag=ui_temp_obj,tag=tmw_271_display3,limit=1] Pose.Head[0] set from entity @s Rotation[1]
execute as @e[tag=ui_temp_obj,tag=tmw_271_display3,limit=1] store result entity @s Pose.Head[0] float -1 run data get entity @s Pose.Head[0]
