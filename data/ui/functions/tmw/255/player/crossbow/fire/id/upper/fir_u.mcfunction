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
    # 回復陣
    execute if score $fireid ui_temp matches 104 run function ui:tmw/255/player/crossbow/fire/id/upper/104
    # ファイアーボール
    execute if score $fireid ui_temp matches 105 run function ui:tmw/255/player/crossbow/fire/id/upper/105
    # ファイアーボール2
    execute if score $fireid ui_temp matches 106 run function ui:tmw/255/player/crossbow/fire/id/upper/106
    # ウィザー
    execute if score $fireid ui_temp matches 107 run function ui:tmw/255/player/crossbow/fire/id/upper/107
    # ウィザー2
    execute if score $fireid ui_temp matches 108 run function ui:tmw/255/player/crossbow/fire/id/upper/108
    # 即席ファイアーボール
    execute if score $fireid ui_temp matches 109 run function ui:tmw/255/player/crossbow/fire/id/upper/109
    # コンパス2
    execute if score $fireid ui_temp matches 110 run function ui:tmw/255/player/crossbow/fire/id/upper/110
    # 灰の呪い
    execute if score $fireid ui_temp matches 111 run function ui:tmw/255/player/crossbow/fire/id/upper/111
    # フレイムサークル
    execute if score $fireid ui_temp matches 112 run function ui:tmw/255/player/crossbow/fire/id/upper/112/core
    # ライズゾンビ
    execute if score $fireid ui_temp matches 113 run function ui:tmw/255/player/crossbow/fire/id/upper/113
    # 氷獄の槌
    execute if score $fireid ui_temp matches 114 run function ui:tmw/255/player/crossbow/fire/id/upper/114
    # 氷獄の陣
    execute if score $fireid ui_temp matches 115 run function ui:tmw/255/player/crossbow/fire/id/upper/115/core
    # 猛烈な衝撃
    execute if score $fireid ui_temp matches 116 run function ui:tmw/255/player/crossbow/fire/id/upper/116
