#
    scoreboard players set $fire ui_temp 0

#
    # デッドロック
    execute if score $fireid ui_temp matches 1 run function ui:tmw/255/player/crossbow/fire/id/upper/1
    # ワルサー
    execute if score $fireid ui_temp matches 2 run function ui:tmw/255/player/crossbow/fire/id/upper/2

    # エコーロッド
    execute if score $fireid ui_temp matches 101 run function ui:tmw/255/player/crossbow/fire/id/upper/101
    # 回復
    execute if score $fireid ui_temp matches 102 run function ui:tmw/255/player/crossbow/fire/id/upper/102
    # コンパス
    execute if score $fireid ui_temp matches 103 run function ui:tmw/255/player/crossbow/fire/id/upper/103
