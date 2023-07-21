# 弾が足りない

#
    scoreboard players set $success.section ui_temp 0

# 条件に当てはまる弾を線形探索で探し、スロットを特定する
    #execute if data storage ui:temp temp[{tag:{tmw:{id:255,type:2}}}] store result score $slot ui_temp run data get storage ui:temp temp[{tag:{tmw:{id:255,type:2}}}].Slot
    execute store result score $amount ui_temp run data get storage ui:gun temp.ScoreReloadAmount

#
    execute if score $amount ui_temp <= @s ui_mp run scoreboard players set $success.section ui_temp 1
    execute if score $success.section ui_temp matches 1 run scoreboard players operation @s ui_mp -= $amount ui_temp

# 弾を消費
    execute unless score $success.section ui_temp matches 0 run function ui:tmw/255/player/crossbow/reload/def_type/1/found