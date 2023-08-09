# 弾が足りない

#
    scoreboard players set $success.section ui_temp 0

# 条件に当てはまる弾を線形探索で探し、スロットを特定する
    #execute if data storage ui:temp temp[{tag:{tmw:{id:255,type:2}}}] store result score $slot ui_temp run data get storage ui:temp temp[{tag:{tmw:{id:255,type:2}}}].Slot
    execute store result score $reloadenergy ui_temp run data get storage ui:gun temp.ReloadCost
    execute store result score $health ui_temp run data get entity @s Health
    execute if score @s tds_hps matches -2147483648.. store result score $health ui_temp run scoreboard players get @s tds_hps

#
    execute if score $reloadenergy ui_temp < $health ui_temp run scoreboard players set $success.section ui_temp 1
    execute if score $success.section ui_temp matches 1 run function ui:tmw/255/player/crossbow/reload/def_type/3/success
    execute if score $success.section ui_temp matches 0 if score @s ui_tmw601_accessory matches 5006 unless score @s ui_hp matches 18.. run scoreboard players set $success.section ui_temp 2
    execute if score $success.section ui_temp matches 2 run function ui:tmw/255/player/crossbow/reload/def_type/3/success_601_5006


# 弾を消費
    execute unless score $success.section ui_temp matches 0 run function ui:tmw/255/player/crossbow/reload/def_type/3/found