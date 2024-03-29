# 弾が足りない

# 条件に当てはまる弾を線形探索で探し、スロットを特定する
    execute store result score $max_size ui_temp run data get storage ui:gun temp.MaxSize
    data modify storage ui:temp temp set from entity @s Inventory
    #オフハンドのアイテムを先頭に持ってくる
    data modify storage ui:temp temp prepend from storage ui:temp temp[-1]
    data remove storage ui:temp temp[-1]
    scoreboard players set $slot ui_temp -1
    #execute if data storage ui:temp temp[{tag:{tmw:{id:255,type:2}}}] store result score $slot ui_temp run data get storage ui:temp temp[{tag:{tmw:{id:255,type:2}}}].Slot
    execute store result score $num ui_temp run data get storage ui:temp temp
    execute if score $max_size ui_temp matches 1.. run function ui:tmw/255/player/crossbow/reload/ui_normal/linear_search
    execute if score $max_size ui_temp matches 0 run function ui:tmw/255/player/crossbow/reload/vanilla/linear_search
    execute if score $max_size ui_temp matches ..-1 run function ui:tmw/255/player/crossbow/reload/independant/linear_search
    #tellraw @a {"score":{"name":"$slot","objective":"ui_temp"},"color":"gold"}

# 弾を消費
    execute unless score $slot ui_temp matches -1 run function ui:tmw/255/player/crossbow/reload/found