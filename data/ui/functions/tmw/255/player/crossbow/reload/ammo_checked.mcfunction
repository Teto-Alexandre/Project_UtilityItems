# 弾が足りない

# 条件に当てはまる弾を線形探索で探し、スロットを特定する
    data modify storage ui:temp temp set from entity @s Inventory
    scoreboard players set $slot ui_temp -1
    #execute if data storage ui:temp temp[{tag:{tmw:{id:255,type:2}}}] store result score $slot ui_temp run data get storage ui:temp temp[{tag:{tmw:{id:255,type:2}}}].Slot
    execute store result score $num ui_temp run data get storage ui:temp temp
    function ui:tmw/255/player/crossbow/reload/linear_search
    #tellraw @a {"score":{"name":"$slot","objective":"ui_temp"},"color":"gold"}

# 弾を消費
    execute unless score $slot ui_temp matches -1 run function ui:tmw/255/player/crossbow/reload/found