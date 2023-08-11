#バースト型
    function ui:tmw/255/player/crossbow/constant/template/f_static

#
    execute if score $stats ui_temp matches 1 if score $cooltime ui_temp matches 0 run scoreboard players set $constanttime ui_temp 0

#
    scoreboard players set $constanttime.max ui_temp 100
#
    execute unless score $burst ui_temp >= $burst.max ui_temp if score $cooltime ui_temp matches 0 if score $constanttime.temp ui_temp matches ..100 run function ui:tmw/255/player/crossbow/constant/template/constant_shot
    execute if score $constant ui_temp matches 0 if score $cooltime ui_temp matches 0 if score $constanttime.temp ui_temp matches ..100 run function ui:tmw/255/player/crossbow/constant/template/constant_burst
