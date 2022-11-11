# リロード

# リロードチェッカー
    scoreboard players set $success ui_temp 0

#
    function ui:tmw/255/player/crossbow/reload/manager

# リロード成功
    execute if score $success ui_temp matches 1 run function ui:tmw/255/player/crossbow/reload/success