# 弾が足りない

#
    scoreboard players set $success.section ui_temp 0

# 条件に当てはまる弾を線形探索で探し、スロットを特定する
    #execute if data storage ui:temp temp[{tag:{tmw:{id:255,type:2}}}] store result score $slot ui_temp run data get storage ui:temp temp[{tag:{tmw:{id:255,type:2}}}].Slot
    execute store result score $reloaditem ui_temp run data get storage ui:gun temp.ReloadItem
    execute if score $reloaditem ui_temp matches 1 run function ui:tmw/255/player/crossbow/reload/def_type/1/id/1
    execute if score $reloaditem ui_temp matches 2 run function ui:tmw/255/player/crossbow/reload/def_type/1/id/2
    execute if score $reloaditem ui_temp matches 3 run function ui:tmw/255/player/crossbow/reload/def_type/1/id/3
    execute if score $reloaditem ui_temp matches 4 run function ui:tmw/255/player/crossbow/reload/def_type/1/id/4
    execute if score $reloaditem ui_temp matches 5 run function ui:tmw/255/player/crossbow/reload/def_type/1/id/5
    execute if score $reloaditem ui_temp matches 6 run function ui:tmw/255/player/crossbow/reload/def_type/1/id/6
    execute if score $reloaditem ui_temp matches 7 run function ui:tmw/255/player/crossbow/reload/def_type/1/id/7
    execute if score $reloaditem ui_temp matches 8 run function ui:tmw/255/player/crossbow/reload/def_type/1/id/8
    execute if score $reloaditem ui_temp matches 9 run function ui:tmw/255/player/crossbow/reload/def_type/1/id/9
    execute if score $reloaditem ui_temp matches 10 run function ui:tmw/255/player/crossbow/reload/def_type/1/id/10
    execute if score $reloaditem ui_temp matches 11 run function ui:tmw/255/player/crossbow/reload/def_type/1/id/11
    execute if score $reloaditem ui_temp matches 12 run function ui:tmw/255/player/crossbow/reload/def_type/1/id/12
    execute if score $reloaditem ui_temp matches 13 run function ui:tmw/255/player/crossbow/reload/def_type/1/id/13
    execute if score $reloaditem ui_temp matches 14 run function ui:tmw/255/player/crossbow/reload/def_type/1/id/14

    execute if score $reloaditem ui_temp matches 101 run function ui:tmw/255/player/crossbow/reload/def_type/1/id/101

    execute if score $reloaditem ui_temp matches 201 run function ui:tmw/255/player/crossbow/reload/def_type/1/id/201
    execute if score $reloaditem ui_temp matches 202 run function ui:tmw/255/player/crossbow/reload/def_type/1/id/202
    execute if score $reloaditem ui_temp matches 203 run function ui:tmw/255/player/crossbow/reload/def_type/1/id/203
    execute if score $reloaditem ui_temp matches 204 run function ui:tmw/255/player/crossbow/reload/def_type/1/id/204

# 弾を消費
    execute unless score $success.section ui_temp matches 0 run function ui:tmw/255/player/crossbow/reload/def_type/1/found