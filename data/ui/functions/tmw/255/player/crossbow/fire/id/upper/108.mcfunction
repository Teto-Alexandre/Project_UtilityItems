# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 in overworld store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 30

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 0 at @s run playsound entity.evoker.prepare_attack player @a ~ ~ ~ 1 1
    execute if score $firetime.temp ui_temp matches 0..5 at @s run particle dust 1.0 1.0 1.0 1 ~ ~ ~ 1 0.3 1 0 20 force
    execute if score $firetime.temp ui_temp matches 6..11 at @s run particle dust 0.8 0.8 0.8 1 ~ ~ ~ 1 0.3 1 0 20 force
    execute if score $firetime.temp ui_temp matches 12..17 at @s run particle dust 0.6 0.6 0.6 1 ~ ~ ~ 1 0.3 1 0 20 force
    execute if score $firetime.temp ui_temp matches 18..23 at @s run particle dust 0.4 0.4 0.4 1 ~ ~ ~ 1 0.3 1 0 20 force
    execute if score $firetime.temp ui_temp matches 24..29 at @s run particle dust 0.2 0.2 0.2 1 ~ ~ ~ 1 0.3 1 0 20 force
    execute if score $firetime.temp ui_temp matches 15.. at @s run particle smoke ~ ~ ~ 1 0.3 1 0 10 force
    execute if score $firetime.temp ui_temp matches 30 at @s run playsound entity.wither.shoot player @a ~ ~ ~ 1 1
    execute if score $firetime.temp ui_temp matches 30 at @s run particle dust 0 0 0 1 ~ ~ ~ 1.5 0.3 1.5 0 50 force
    execute if score $firetime.temp ui_temp matches 30 at @s run particle smoke ~ ~ ~ 1 0.3 1 0.1 100 force
    execute if score $firetime.temp ui_temp matches 30 at @s anchored eyes run summon wither_skull ^ ^ ^1.5 {Tags:["ui_temp_obj"]}
    execute if score $firetime.temp ui_temp matches 30 at @s anchored eyes run summon wither_skull ^ ^ ^1.5 {Tags:["ui_temp_obj"]}
    execute if score $firetime.temp ui_temp matches 30 at @s anchored eyes run summon wither_skull ^ ^ ^1.5 {Tags:["ui_temp_obj"]}
    execute if score $firetime.temp ui_temp matches 30 at @s anchored eyes run summon wither_skull ^ ^ ^1.5 {Tags:["ui_temp_obj"]}
    execute if score $firetime.temp ui_temp matches 30 at @s anchored eyes run summon wither_skull ^ ^ ^1.5 {Tags:["ui_temp_obj"]}
    execute if score $firetime.temp ui_temp matches 30 at @s anchored eyes run summon wither_skull ^ ^ ^1.5 {Tags:["ui_temp_obj"]}
    execute if score $firetime.temp ui_temp matches 30 at @s anchored eyes run summon wither_skull ^ ^ ^1.5 {Tags:["ui_temp_obj"]}
    execute if score $firetime.temp ui_temp matches 30 at @s anchored eyes run summon wither_skull ^ ^ ^1.5 {Tags:["ui_temp_obj"]}
    execute if score $firetime.temp ui_temp matches 30 at @s anchored eyes run summon wither_skull ^ ^ ^1.5 {Tags:["ui_temp_obj"]}
    execute if score $firetime.temp ui_temp matches 30 at @s anchored eyes positioned ^ ^ ^1.5 as @e[tag=ui_temp_obj,limit=1] run function ui:tmw/255/player/crossbow/fire/id/upper/108.2
    execute if score $firetime.temp ui_temp matches 30 at @s anchored eyes positioned ^ ^ ^1.5 rotated ~5 ~ as @e[tag=ui_temp_obj,limit=1] run function ui:tmw/255/player/crossbow/fire/id/upper/108.2
    execute if score $firetime.temp ui_temp matches 30 at @s anchored eyes positioned ^ ^ ^1.5 rotated ~10 ~ as @e[tag=ui_temp_obj,limit=1] run function ui:tmw/255/player/crossbow/fire/id/upper/108.2
    execute if score $firetime.temp ui_temp matches 30 at @s anchored eyes positioned ^ ^ ^1.5 rotated ~-5 ~ as @e[tag=ui_temp_obj,limit=1] run function ui:tmw/255/player/crossbow/fire/id/upper/108.2
    execute if score $firetime.temp ui_temp matches 30 at @s anchored eyes positioned ^ ^ ^1.5 rotated ~-10 ~ as @e[tag=ui_temp_obj,limit=1] run function ui:tmw/255/player/crossbow/fire/id/upper/108.2
    execute if score $firetime.temp ui_temp matches 30 at @s anchored eyes positioned ^ ^ ^1.5 rotated ~ ~5 as @e[tag=ui_temp_obj,limit=1] run function ui:tmw/255/player/crossbow/fire/id/upper/108.2
    execute if score $firetime.temp ui_temp matches 30 at @s anchored eyes positioned ^ ^ ^1.5 rotated ~ ~10 as @e[tag=ui_temp_obj,limit=1] run function ui:tmw/255/player/crossbow/fire/id/upper/108.2
    execute if score $firetime.temp ui_temp matches 30 at @s anchored eyes positioned ^ ^ ^1.5 rotated ~ ~-5 as @e[tag=ui_temp_obj,limit=1] run function ui:tmw/255/player/crossbow/fire/id/upper/108.2
    execute if score $firetime.temp ui_temp matches 30 at @s anchored eyes positioned ^ ^ ^1.5 rotated ~ ~-10 as @e[tag=ui_temp_obj,limit=1] run function ui:tmw/255/player/crossbow/fire/id/upper/108.2
