# インベントリの手前から順番に該当する弾を探す

#
    execute store result score $reloadid ui_temp run data get storage ui:gun temp.ReloadID

# 該当するなら $num を切断して $slot に保存
    data modify storage minecraft:temp temp1 set from storage ui:temp temp[0]
    data modify storage minecraft:temp temp2 set from storage ui:gun temp.ReloadItem
    execute store success score $check ui_temp run data modify storage ui:temp temp[0] merge from storage ui:gun temp.ReloadItem
    execute if score $check ui_temp matches 0 store result score $slot ui_temp run data get storage ui:temp temp[0].Slot
    execute if score $check ui_temp matches 0 run scoreboard players set $num ui_temp -1

# インベントリが空になったら繰り返し中断
    execute unless score $num ui_temp matches -1 run data remove storage ui:temp temp[0]
    scoreboard players remove $num ui_temp 1
    execute if score $num ui_temp matches 1.. run function ui:tmw/255/player/crossbow/reload/vanilla/linear_search