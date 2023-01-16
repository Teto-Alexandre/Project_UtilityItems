# 弾が足りない

#
    scoreboard players set $success.section ui_temp 0

# 条件に当てはまる弾を線形探索で探し、スロットを特定する
    #execute if data storage ui:temp temp[{tag:{tmw:{id:255,type:2}}}] store result score $slot ui_temp run data get storage ui:temp temp[{tag:{tmw:{id:255,type:2}}}].Slot
    execute store result score $reloaditem ui_temp run data get storage ui:gun temp.ReloadItem

#
execute if score $reloaditem ui_temp matches 1..100 run function ui:tmw/255/player/crossbow/reload/def_type/1/id/upper/1-100/pass
execute if score $reloaditem ui_temp matches 101..200 run function ui:tmw/255/player/crossbow/reload/def_type/1/id/upper/101-200/pass
execute if score $reloaditem ui_temp matches 201..300 run function ui:tmw/255/player/crossbow/reload/def_type/1/id/upper/201-300/pass

# 弾を消費
    execute unless score $success.section ui_temp matches 0 run function ui:tmw/255/player/crossbow/reload/def_type/1/found