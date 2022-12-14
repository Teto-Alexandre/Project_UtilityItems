#
    execute store result score $fireid ui_temp run data get storage ui:gun temp.FireID
    scoreboard players set $firetime.temp ui_temp 0
    scoreboard players set $firetime.max ui_temp -1

#
    execute if entity @s[tag=tmw_crossbow_mh_n] run scoreboard players set $changed ui_temp 1

#
    execute if score $fireid ui_temp matches ..-1 at @s anchored eyes positioned ^-0.25 ^-0.1 ^0.7 run function ui:tmw/255/player/crossbow/fire/id/downer/fir_d
    execute if score $fireid ui_temp matches 1.. at @s anchored eyes positioned ^-0.25 ^-0.1 ^0.7 run function ui:tmw/255/player/crossbow/fire/id/upper/fir_u

# 書き込み
    #tellraw @a [{"score":{"name":"$fireid","objective":"ui_temp"}},{"text":": "},{"score":{"name":"$firetime","objective":"ui_temp"}},{"text":" "},{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]
    execute if score $firetime.temp ui_temp > $firetime.max ui_temp store success score $changed ui_temp run scoreboard players set $firetime ui_temp 0
    execute if score $firetime ui_temp matches 0 run scoreboard players set $burst ui_temp 0
    #execute at @s run playsound block.note_block.hat player @a ~ ~ ~ 0.5 2 0
