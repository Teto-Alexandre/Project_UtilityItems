# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 in overworld store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 60

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 0 at @s run playsound entity.evoker.prepare_attack player @a ~ ~ ~ 3 0.6
    execute if score $firetime.temp ui_temp matches 0 at @s run function ui:tmw/255/player/crossbow/fire/id/upper/115/particle
    execute if score $firetime.temp ui_temp matches 12 at @s run function ui:tmw/255/player/crossbow/fire/id/upper/115/particle
    execute if score $firetime.temp ui_temp matches 24 at @s run function ui:tmw/255/player/crossbow/fire/id/upper/115/particle
    execute if score $firetime.temp ui_temp matches 36 at @s run function ui:tmw/255/player/crossbow/fire/id/upper/115/particle
    execute if score $firetime.temp ui_temp matches 48 at @s run function ui:tmw/255/player/crossbow/fire/id/upper/115/particle
    execute if score $firetime.temp ui_temp matches 60 at @s run function ui:tmw/255/player/crossbow/fire/id/upper/115/particle
    execute if score $firetime.temp ui_temp matches 0..11 at @s run particle dust 0.3 0.7 1 0.6 ~ ~1 ~ 0.5 0.5 0.5 0 5 force
    execute if score $firetime.temp ui_temp matches 12..23 at @s run particle dust 0.3 0.7 1 0.6 ~ ~1 ~ 0.5 0.5 0.5 0 10 force
    execute if score $firetime.temp ui_temp matches 24..35 at @s run particle dust 0.3 0.7 1 0.6 ~ ~1 ~ 0.5 0.5 0.5 0 15 force
    execute if score $firetime.temp ui_temp matches 36..47 at @s run particle dust 0.3 0.7 1 0.6 ~ ~1 ~ 0.5 0.5 0.5 0 20 force
    execute if score $firetime.temp ui_temp matches 48..59 at @s run particle dust 0.3 0.7 1 0.6 ~ ~1 ~ 0.5 0.5 0.5 0 25 force
    execute if score $firetime.temp ui_temp matches 60 at @s run playsound item.trident.thunder player @a ~ ~ ~ 1 1.5
    execute if score $firetime.temp ui_temp matches 60 at @s run playsound block.bell.use player @a ~ ~ ~ 2 0.8
    execute if score $firetime.temp ui_temp matches 60 at @s run particle dust 0.3 0.7 1 1 ^ ^ ^10 5 5 5 0 300 force
    execute if score $firetime.temp ui_temp matches 60 at @s run particle block ice ^ ^ ^10 5 5 5 0 200 force
    execute if score $firetime.temp ui_temp matches 60 at @s run particle firework ^ ^ ^10 5 5 5 0 50 force
    execute if score $firetime.temp ui_temp matches 60 at @s positioned ^ ^ ^4 as @e[predicate=ui:load_unhurtable,distance=..1.9] run scoreboard players add @s tds_cold 20
    execute if score $firetime.temp ui_temp matches 60 at @s positioned ^ ^ ^4 as @e[predicate=ui:load_unhurtable,distance=..1.9] run effect give @s slowness 5 1 true
    execute if score $firetime.temp ui_temp matches 60 run data merge storage ui:common {input:{Mode:"create",Var:-10008}}
    execute if score $firetime.temp ui_temp matches 60 at @s rotated ~ 0 positioned ^ ^ ^10 run function ui:common/particle
