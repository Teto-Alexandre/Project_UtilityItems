# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 in overworld store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 80

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 0 at @s run playsound entity.evoker.prepare_attack player @a ~ ~ ~ 2 0.5
    execute if score $firetime.temp ui_temp matches 40 at @s run playsound entity.evoker.prepare_attack player @a ~ ~ ~ 2 1
    execute if score $firetime.temp ui_temp matches 0 at @s run function ui:tmw/255/player/crossbow/fire/id/upper/119/particle
    execute if score $firetime.temp ui_temp matches 20 at @s run function ui:tmw/255/player/crossbow/fire/id/upper/119/particle
    execute if score $firetime.temp ui_temp matches 40 at @s run function ui:tmw/255/player/crossbow/fire/id/upper/119/particle
    execute if score $firetime.temp ui_temp matches 60 at @s run function ui:tmw/255/player/crossbow/fire/id/upper/119/particle
    execute if score $firetime.temp ui_temp matches 80 at @s run function ui:tmw/255/player/crossbow/fire/id/upper/119/particle
    execute if score $firetime.temp ui_temp matches 0..19 at @s run particle flame ~ ~1 ~ 0.5 0.5 0.5 0.05 1 force
    execute if score $firetime.temp ui_temp matches 20..39 at @s run particle flame ~ ~1 ~ 1.0 1.0 1.0 0.05 2 force
    execute if score $firetime.temp ui_temp matches 40..59 at @s run particle flame ~ ~1 ~ 1.5 1.5 1.5 0.05 3 force
    execute if score $firetime.temp ui_temp matches 60..79 at @s run particle flame ~ ~1 ~ 2.0 2.0 2.0 0.05 4 force
    execute if score $firetime.temp ui_temp matches 80 at @s run playsound entity.evoker.cast_spell player @a ~ ~ ~ 2 1.2
    execute if score $firetime.temp ui_temp matches 80 at @s rotated ~ 0 run particle flame ^ ^2 ^8 2 2 2 0.1 50 force
    execute if score $firetime.temp ui_temp matches 80 run data merge storage ui:common {input:{Mode:"create",Var:-10013}}
    execute if score $firetime.temp ui_temp matches 80 at @s rotated ~ 0 positioned ^ ^ ^8 run function ui:common/particle
