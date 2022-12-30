#
    function ui:tmw/255/player/crossbow/fire/template/f_static

#
    scoreboard players set $firetime.max ui_temp 100
#
    execute unless score $burst ui_temp >= $burst.max ui_temp if score $cooltime ui_temp matches 0 if score $firetime.temp ui_temp matches ..100 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $fire ui_temp matches 0 if score $cooltime ui_temp matches 0 if score $firetime.temp ui_temp matches ..100 run function ui:tmw/255/player/crossbow/fire/template/fire_burst
