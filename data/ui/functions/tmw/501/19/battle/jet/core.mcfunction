# モード別

#
execute if score @s ui_tmw501_19_now_jet matches 2 if score @s ui_tmw501_19_now_en >= @s ui_tmw501_19_stat_en_use_jet run function ui:tmw/501/19/battle/jet/on
execute if score @s ui_tmw501_19_now_jet matches 2 if score @s ui_tmw501_19_now_en < @s ui_tmw501_19_stat_en_use_jet run function ui:tmw/501/19/battle/jet/change/shutdown
execute if score @s ui_tmw501_19_now_jet matches 1 run function ui:tmw/501/19/battle/jet/off
