# リロード

# リロードチェッカー
    scoreboard players set $success ui_temp 0

#
    execute store result score $reloadtype ui_temp run data get storage ui:gun temp.ReloadType
    execute if score $reloadtype ui_temp matches 1.. run function ui:tmw/255/player/crossbow/reload/def_type/mag_sum
    execute if score $reloadtype ui_temp matches 0 run function ui:tmw/255/player/crossbow/reload/manager

# リロード成功
    execute if score $success ui_temp matches 0 run function ui:tmw/255/player/crossbow/reload/fail
    execute if score $success ui_temp matches 1.. run function ui:tmw/255/player/crossbow/reload/success