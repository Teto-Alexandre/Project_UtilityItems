scoreboard players remove $firetime.rot ui_temp 1
execute if score $firetime.rot ui_temp matches 0 rotated ~1 0 run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle2
execute if score $firetime.rot ui_temp matches 1.. rotated ~1 0 run function ui:tmw/255/player/crossbow/fire/id/upper/123/rotating