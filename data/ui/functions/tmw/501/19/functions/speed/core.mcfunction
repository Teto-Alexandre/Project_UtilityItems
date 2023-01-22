# モード別

#
execute if score @s ui_st matches 1.. if score @s ui_tmw501_19_now_en >= @s ui_tmw501_19_stat_en_use_speed run function ui:tmw/501/19/battle/speed/on
execute if score @s ui_st matches 1.. if score @s ui_tmw501_19_now_en < @s ui_tmw501_19_stat_en_use_speed run function ui:tmw/501/19/battle/speed/change/shutdown
execute if score @s ui_st matches 0 run function ui:tmw/501/19/battle/speed/off
