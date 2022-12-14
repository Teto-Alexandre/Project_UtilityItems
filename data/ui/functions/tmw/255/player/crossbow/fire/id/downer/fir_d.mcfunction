#
    scoreboard players set $fire ui_temp 0

#バースト型
    execute if score $fireid ui_temp matches -1 run function ui:tmw/255/player/crossbow/fire/id/downer/1
    
#スプレー型
    execute if score $fireid ui_temp matches -2 run function ui:tmw/255/player/crossbow/fire/id/downer/2
