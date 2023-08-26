# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 in overworld store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 160

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 0 at @s run playsound entity.evoker.prepare_attack player @a ~ ~ ~ 3 0.5
    execute if score $firetime.temp ui_temp matches 80 at @s run playsound entity.evoker.prepare_attack player @a ~ ~ ~ 3 0.5
    execute if score $firetime.temp ui_temp matches 120 at @s run playsound entity.evoker.prepare_attack player @a ~ ~ ~ 3 1
    execute if score $firetime.temp ui_temp matches 0 at @s run function ui:tmw/255/player/crossbow/fire/id/upper/118/particle
    execute if score $firetime.temp ui_temp matches 20 at @s run function ui:tmw/255/player/crossbow/fire/id/upper/118/particle
    execute if score $firetime.temp ui_temp matches 40 at @s run function ui:tmw/255/player/crossbow/fire/id/upper/118/particle
    execute if score $firetime.temp ui_temp matches 60 at @s run function ui:tmw/255/player/crossbow/fire/id/upper/118/particle
    execute if score $firetime.temp ui_temp matches 80 at @s run function ui:tmw/255/player/crossbow/fire/id/upper/118/particle
    execute if score $firetime.temp ui_temp matches 100 at @s run function ui:tmw/255/player/crossbow/fire/id/upper/118/particle
    execute if score $firetime.temp ui_temp matches 120 at @s run function ui:tmw/255/player/crossbow/fire/id/upper/118/particle
    execute if score $firetime.temp ui_temp matches 140 at @s run function ui:tmw/255/player/crossbow/fire/id/upper/118/particle
    execute if score $firetime.temp ui_temp matches 160 at @s run function ui:tmw/255/player/crossbow/fire/id/upper/118/particle
    execute if score $firetime.temp ui_temp matches 0..19 at @s run particle dust 1 1 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 1 force
    execute if score $firetime.temp ui_temp matches 20..39 at @s run particle dust 1 1 0 1 ~ ~1 ~ 1.0 1.0 1.0 0 2 force
    execute if score $firetime.temp ui_temp matches 40..59 at @s run particle dust 1 1 0 1 ~ ~1 ~ 1.5 1.5 1.5 0 3 force
    execute if score $firetime.temp ui_temp matches 60..79 at @s run particle dust 1 1 0 1 ~ ~1 ~ 2.0 2.0 2.0 0 4 force
    execute if score $firetime.temp ui_temp matches 80..99 at @s run particle dust 1 1 0 1 ~ ~1 ~ 2.5 2.5 2.5 0 5 force
    execute if score $firetime.temp ui_temp matches 100..119 at @s run particle dust 1 1 0 1 ~ ~1 ~ 3.0 3.0 3.0 0 6 force
    execute if score $firetime.temp ui_temp matches 120..139 at @s run particle dust 1 1 0 1 ~ ~1 ~ 3.0 3.0 3.0 0 8 force
    execute if score $firetime.temp ui_temp matches 140..159 at @s run particle dust 1 1 0 1 ~ ~1 ~ 3.0 3.0 3.0 0 10 force
    execute if score $firetime.temp ui_temp matches 160 at @s run playsound entity.evoker.cast_spell player @a ~ ~ ~ 3 0.8
    execute if score $firetime.temp ui_temp matches 160 at @s run playsound entity.evoker.cast_spell player @a ~ ~ ~ 3 1.2
    execute if score $firetime.temp ui_temp matches 160 run function ui:tmw/255/player/crossbow/fire/template/fire_burst
