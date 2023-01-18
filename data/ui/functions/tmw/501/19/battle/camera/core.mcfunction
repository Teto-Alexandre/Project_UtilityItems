# モード別

# 低スペックカメラで見える範囲は制限する
execute if entity @s[tag=tmw_501_19_camera_low] run effect give @s darkness 10 0 true

#
execute if score @s ui_tmw501_19_now_camera matches 2 if score @s ui_tmw501_19_now_en >= @s ui_tmw501_19_stat_en_use_camera run function ui:tmw/501/19/battle/camera/on
execute if score @s ui_tmw501_19_now_camera matches 2 if score @s ui_tmw501_19_now_en < @s ui_tmw501_19_stat_en_use_camera run function ui:tmw/501/19/battle/camera/change/shutdown
execute if score @s ui_tmw501_19_now_camera matches 1 run function ui:tmw/501/19/battle/camera/off
