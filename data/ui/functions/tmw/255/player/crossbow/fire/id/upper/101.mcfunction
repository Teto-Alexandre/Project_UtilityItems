# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    execute if entity @s[tag=tmw_active_temp] if score $firetime.temp ui_temp matches 8..100 store result score $firetime ui_temp run time query gametime
    execute if entity @s[tag=tmw_active_temp] if score $firetime.temp ui_temp matches 8..100 run scoreboard players remove $firetime ui_temp 100
    execute if entity @s[tag=tmw_active_temp] if score $firetime.temp ui_temp matches 8..100 run function ui:tmw/255/player/crossbow/fire/template/calc
    execute if entity @s[tag=tmw_active_temp] if score $firetime.temp ui_temp matches 108..200 store result score $firetime ui_temp run time query gametime
    execute if entity @s[tag=tmw_active_temp] if score $firetime.temp ui_temp matches 108..200 run scoreboard players remove $firetime ui_temp 200
    execute if entity @s[tag=tmw_active_temp] if score $firetime.temp ui_temp matches 108..200 run function ui:tmw/255/player/crossbow/fire/template/calc
    execute if entity @s[tag=tmw_active_temp] if score $firetime.temp ui_temp matches 200..205 store result score $firetime ui_temp run time query gametime
    execute if entity @s[tag=tmw_active_temp] if score $firetime.temp ui_temp matches 200..205 run scoreboard players remove $firetime ui_temp 200
    execute if entity @s[tag=tmw_active_temp] if score $firetime.temp ui_temp matches 200..205 run function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 230
    execute if score $reloadtime ui_temp matches 1.. run scoreboard players set $firetime ui_temp 0

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 0 run scoreboard players set $fire ui_temp 1
    execute if score $firetime.temp ui_temp matches 0 run execute store result score $temp ui_temp run data get storage ui:gun temp.ShotCT
    execute if score $firetime.temp ui_temp matches 0 run execute store result score $cooltime ui_temp run time query gametime
    execute if score $firetime.temp ui_temp matches 0 run scoreboard players operation $cooltime ui_temp += $temp ui_temp
    execute if score $firetime.temp ui_temp matches 0 run scoreboard players set $changed ui_temp 1
    execute if score $firetime.temp ui_temp matches 10 store success score $changed ui_temp run scoreboard players set $firetime ui_temp 0

#
    execute if score $firetime.temp ui_temp matches 100 run scoreboard players set $fire ui_temp 1
    execute if score $firetime.temp ui_temp matches 100 run execute store result score $temp ui_temp run data get storage ui:gun temp.ShotCT
    execute if score $firetime.temp ui_temp matches 100 run execute store result score $cooltime ui_temp run time query gametime
    execute if score $firetime.temp ui_temp matches 100 run scoreboard players operation $cooltime ui_temp += $temp ui_temp
    execute if score $firetime.temp ui_temp matches 100 run scoreboard players set $changed ui_temp 1
    execute if score $firetime.temp ui_temp matches 102 run scoreboard players set $fire ui_temp 1
    execute if score $firetime.temp ui_temp matches 102 run execute store result score $temp ui_temp run data get storage ui:gun temp.ShotCT
    execute if score $firetime.temp ui_temp matches 102 run execute store result score $cooltime ui_temp run time query gametime
    execute if score $firetime.temp ui_temp matches 102 run scoreboard players operation $cooltime ui_temp += $temp ui_temp
    execute if score $firetime.temp ui_temp matches 102 run scoreboard players set $changed ui_temp 1
    execute if score $firetime.temp ui_temp matches 112 store success score $changed ui_temp run scoreboard players set $firetime ui_temp 0

#
    execute if score $firetime.temp ui_temp matches 200 run scoreboard players set $fire ui_temp 2
    execute if score $firetime.temp ui_temp matches 200 run execute store result score $temp ui_temp run data get storage ui:gun temp.ShotCT
    execute if score $firetime.temp ui_temp matches 200 run execute store result score $cooltime ui_temp run time query gametime
    execute if score $firetime.temp ui_temp matches 200 run scoreboard players operation $cooltime ui_temp += $temp ui_temp
    execute if score $firetime.temp ui_temp matches 200 run scoreboard players set $changed ui_temp 1
    execute if score $firetime.temp ui_temp matches 202 run scoreboard players set $fire ui_temp 2
    execute if score $firetime.temp ui_temp matches 202 run execute store result score $temp ui_temp run data get storage ui:gun temp.ShotCT
    execute if score $firetime.temp ui_temp matches 202 run execute store result score $cooltime ui_temp run time query gametime
    execute if score $firetime.temp ui_temp matches 202 run scoreboard players operation $cooltime ui_temp += $temp ui_temp
    execute if score $firetime.temp ui_temp matches 202 run scoreboard players set $changed ui_temp 1
    execute if score $firetime.temp ui_temp matches 204 run scoreboard players set $fire ui_temp 2
    execute if score $firetime.temp ui_temp matches 204 run execute store result score $temp ui_temp run data get storage ui:gun temp.ShotCT
    execute if score $firetime.temp ui_temp matches 204 run execute store result score $cooltime ui_temp run time query gametime
    execute if score $firetime.temp ui_temp matches 204 run scoreboard players operation $cooltime ui_temp += $temp ui_temp
    execute if score $firetime.temp ui_temp matches 204 run scoreboard players set $changed ui_temp 1
    execute if score $firetime.temp ui_temp matches 206 run scoreboard players set $fire ui_temp 2
    execute if score $firetime.temp ui_temp matches 206 run execute store result score $temp ui_temp run data get storage ui:gun temp.ShotCT
    execute if score $firetime.temp ui_temp matches 206 run execute store result score $cooltime ui_temp run time query gametime
    execute if score $firetime.temp ui_temp matches 206 run scoreboard players operation $cooltime ui_temp += $temp ui_temp
    execute if score $firetime.temp ui_temp matches 206 run scoreboard players set $changed ui_temp 1
    execute if score $firetime.temp ui_temp matches 206 run playsound entity.warden.sonic_charge player @a ~ ~ ~ 1 1.5
    execute if score $firetime.temp ui_temp matches 206 anchored eyes positioned ^ ^-0.1 ^-0.4 run particle dust 0 0.933 1 0.5 ~ ~ ~ 0.4 0.5 0.4 0 20
    execute if score $firetime.temp ui_temp matches 206 anchored eyes positioned ^ ^-0.1 ^-0.4 run particle dust 0 0.361 0.388 0.5 ~ ~ ~ 0.4 0.5 0.4 0 20
    execute if score $firetime.temp ui_temp matches 206..226 anchored eyes positioned ^ ^-0.1 ^-0.4 run particle dust 0 0.933 1 0.5 ~ ~ ~ 0.2 0.2 0.2 0 2
    execute if score $firetime.temp ui_temp matches 206..226 anchored eyes positioned ^ ^-0.1 ^-0.4 run particle dust 0 0.361 0.388 0.5 ~ ~ ~ 0.2 0.2 0.2 0 2

#
    execute if score $firetime.temp ui_temp matches 226 run playsound entity.warden.sonic_boom player @a ~ ~ ~ 1 1.2
    execute if score $firetime.temp ui_temp matches 226 run scoreboard players set $fire ui_temp 3
    execute if score $firetime.temp ui_temp matches 226 run execute store result score $temp ui_temp run data get storage ui:gun temp.BurstCT
    execute if score $firetime.temp ui_temp matches 226 run execute store result score $cooltime ui_temp run time query gametime
    execute if score $firetime.temp ui_temp matches 226 run scoreboard players operation $cooltime ui_temp += $temp ui_temp
    execute if score $firetime.temp ui_temp matches 226 run scoreboard players set $firetime ui_temp 0
    execute if score $firetime.temp ui_temp matches 226 run scoreboard players set $changed ui_temp 1
