#
    function ui:tmw/255/player/crossbow/fire/template/f_static

#
    scoreboard players set $firetime.max ui_temp 80
#
    execute if score $firetime.temp ui_temp matches 0 run playsound entity.tnt.primed player @a ~ ~ ~ 1 1 0
    execute if score $firetime.temp ui_temp matches 0 run particle lava ~ ~ ~ 0 0 0 0 5
    execute if score $firetime.temp ui_temp matches 0 run particle flame ~ ~ ~ 0.1 0.1 0.1 0.05 5
    execute if score $firetime.temp ui_temp matches 1..79 run particle flame ~ ~ ~ 0.1 0.1 0.1 0.05 1
    execute if score $firetime.temp ui_temp matches 80 run function ui:tmw/255/player/crossbow/fire/template/fire_burst
