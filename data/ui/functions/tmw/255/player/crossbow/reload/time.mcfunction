#
    execute store result score $reloadid ui_temp run data get storage ui:gun temp.ReloadID

# データ取り
    execute store result score $time ui_temp run time query gametime
    scoreboard players operation $reloadtime.temp ui_temp = $reloadtime ui_temp
    scoreboard players operation $reloadtime.temp ui_temp -= $time ui_temp

#
    execute if score $reloadid ui_temp matches ..-1 at @s run function ui:tmw/255/player/crossbow/reload/id/downer/manager
    execute if score $reloadid ui_temp matches 1.. at @s run function ui:tmw/255/player/crossbow/reload/id/upper/manager

# 書き込み
    #tellraw @a {"score":{"name":"$reloadtime.temp","objective":"ui_temp"}}
    execute if score $reloadtime.temp ui_temp matches ..-1 store success score $changed ui_temp run scoreboard players set $reloadtime ui_temp 0
    #execute at @s run playsound block.note_block.hat player @a ~ ~ ~ 0.5 2 0