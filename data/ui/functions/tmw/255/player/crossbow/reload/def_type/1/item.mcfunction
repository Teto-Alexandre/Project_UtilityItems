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

# 弾を消費
    execute unless score $success.section ui_temp matches 0 run function ui:tmw/255/player/crossbow/reload/def_type/1/found