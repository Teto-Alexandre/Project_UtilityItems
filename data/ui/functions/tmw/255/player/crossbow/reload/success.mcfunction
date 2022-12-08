# リロード

# 共通
    scoreboard players set $changed ui_temp 1
    execute at @s run playsound block.iron_door.close player @s ~ ~ ~ 0.6 1.2 0
    ## 現在の装弾数を確認
    execute if score $hand ui_temp matches 0 run data modify storage ui:temp temp set from entity @s SelectedItem.tag.tmw.bullets
    execute if score $hand ui_temp matches 1 run data modify storage ui:temp temp set from entity @s Inventory[{Slot:-106b}].tag.tmw.bullets
    execute store result score $num ui_temp run data get storage ui:temp temp
    scoreboard players set $check ui_temp 0
    function ui:tmw/255/player/crossbow/reload/linear_count
    scoreboard players operation $bullets ui_temp = $check ui_temp

# クールタイム解除時刻.mod
    execute store result score $rt ui_temp run data get storage ui:gun temp.ReloadMax
    execute store result score $reloadtime ui_temp run time query gametime
    scoreboard players operation $reloadtime ui_temp += $rt ui_temp
    #tellraw @a {"score":{"name":"$reloadtime","objective":"ui_temp"}}

# 待機状態なら射撃機能を復活させる
    execute if score $stats ui_temp matches 1 run scoreboard players set $item ui_temp 1
    execute if score $stats ui_temp matches 1 run function ui:tmw/255/player/switch/replace
    execute if score $stats ui_temp matches 1 at @s run playsound minecraft:block.piston.contract player @s ~ ~ ~ 0.6 1.2 0