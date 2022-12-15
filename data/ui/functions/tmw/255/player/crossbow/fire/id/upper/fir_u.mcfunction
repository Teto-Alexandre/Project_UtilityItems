#
    scoreboard players set $fire ui_temp 0

#
    # デッドロック
    execute if score $fireid ui_temp matches 1 run function ui:tmw/255/player/crossbow/fire/id/upper/1
    # ワルサー
    execute if score $fireid ui_temp matches 2 run function ui:tmw/255/player/crossbow/fire/id/upper/2
