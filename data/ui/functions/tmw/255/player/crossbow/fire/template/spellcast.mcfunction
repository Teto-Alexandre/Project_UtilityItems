execute store result score $time ui_temp run time query gametime

#tellraw @a [{"text":"比較> now_time: "},{"score":{"name": "$time","objective": "ui_temp"}},{"text":" - last_time: "},{"score":{"name": "$firespellcast","objective": "ui_temp"}}]

execute unless score $firespellcast ui_temp matches 0 unless score $time ui_temp = $firespellcast ui_temp run function ui:tmw/255/player/crossbow/fire/template/stop_fire
execute store result score $firespellcast ui_temp run scoreboard players add $time ui_temp 1
scoreboard players set $changed ui_temp 1

execute if score $Cache ui_temp matches 1 run scoreboard players reset $firespellcast ui_temp
execute if score $Cache ui_temp matches 1 run scoreboard players reset $Cache ui_temp