data modify entity @e[tag=ui_temp_obj,tag=tmw_270_display1,limit=1] Pose merge value {Head:[0.0f,1.0f,0.0f]}
data modify entity @e[tag=ui_temp_obj,tag=tmw_270_display2,limit=1] Pose merge value {Head:[0.0f,1.0f,0.0f]}
data modify entity @e[tag=ui_temp_obj,tag=tmw_270_display3,limit=1] Pose merge value {Head:[0.0f,1.0f,0.0f]}
data modify entity @e[tag=ui_temp_obj,tag=tmw_270_display2,limit=1] Pose.Head[1] set from entity @s Rotation[0]
data modify entity @e[tag=ui_temp_obj,tag=tmw_270_display3,limit=1] Pose.Head[1] set from entity @s Rotation[0]
data modify entity @e[tag=ui_temp_obj,tag=tmw_270_display3,limit=1] Pose.Head[0] set from entity @s Rotation[1]
