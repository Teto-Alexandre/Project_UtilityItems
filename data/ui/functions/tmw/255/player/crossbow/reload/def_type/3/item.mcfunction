# 弾が足りない

#
    scoreboard players set $success.section ui_temp 0

# 条件に当てはまる弾を線形探索で探し、スロットを特定する
    #execute if data storage ui:temp temp[{tag:{tmw:{id:255,type:2}}}] store result score $slot ui_temp run data get storage ui:temp temp[{tag:{tmw:{id:255,type:2}}}].Slot
    execute store result score $reloadenergy ui_temp run data get storage ui:gun temp.ReloadCost
    execute store result score $health ui_temp run data get entity @s Health

#
    execute if score $reloadenergy ui_temp <= $health ui_temp run scoreboard players set $success.section ui_temp 1
    execute if score $success.section ui_temp matches 1 run scoreboard players operation $health ui_temp -= $reloadenergy ui_temp
    execute if score $success.section ui_temp matches 1 run data merge storage tds: {temp:{Damage:1.00,DamageType:1,DeathMessage:-1,EPF:0,BypassArmor:-1,BypassResistance:true}}
    execute if score $success.section ui_temp matches 1 store result storage tds: temp.Damage int 1 run scoreboard players get $reloadenergy ui_temp
    execute if score $success.section ui_temp matches 1 run function tds:attack


# 弾を消費
    execute unless score $success.section ui_temp matches 0 run function ui:tmw/255/player/crossbow/reload/def_type/2/found