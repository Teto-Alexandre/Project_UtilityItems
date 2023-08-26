# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 in overworld store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 10

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 0 at @s run playsound entity.evoker.prepare_attack player @a ~ ~ ~ 1 2
    execute if score $firetime.temp ui_temp matches 0 at @s run particle dust 0.3 0.7 1 0.6 ~ ~2.0 ~ 0.4 0 0.4 0 10 force
    execute if score $firetime.temp ui_temp matches 1 at @s run particle dust 0.3 0.7 1 0.6 ~ ~1.8 ~ 0.4 0 0.4 0 10 force
    execute if score $firetime.temp ui_temp matches 2 at @s run particle dust 0.3 0.7 1 0.6 ~ ~1.6 ~ 0.4 0 0.4 0 10 force
    execute if score $firetime.temp ui_temp matches 3 at @s run particle dust 0.3 0.7 1 0.6 ~ ~1.4 ~ 0.4 0 0.4 0 10 force
    execute if score $firetime.temp ui_temp matches 4 at @s run particle dust 0.3 0.7 1 0.6 ~ ~1.2 ~ 0.4 0 0.4 0 10 force
    execute if score $firetime.temp ui_temp matches 5 at @s run particle dust 0.3 0.7 1 0.6 ~ ~1.0 ~ 0.4 0 0.4 0 10 force
    execute if score $firetime.temp ui_temp matches 6 at @s run particle dust 0.3 0.7 1 0.6 ~ ~0.8 ~ 0.4 0 0.4 0 10 force
    execute if score $firetime.temp ui_temp matches 7 at @s run particle dust 0.3 0.7 1 0.6 ~ ~0.6 ~ 0.4 0 0.4 0 10 force
    execute if score $firetime.temp ui_temp matches 8 at @s run particle dust 0.3 0.7 1 0.6 ~ ~0.4 ~ 0.4 0 0.4 0 10 force
    execute if score $firetime.temp ui_temp matches 9 at @s run particle dust 0.3 0.7 1 0.6 ~ ~0.2 ~ 0.4 0 0.4 0 10 force
    execute if score $firetime.temp ui_temp matches 10 at @s run playsound block.bell.use player @a ~ ~ ~ 1 2
    execute if score $firetime.temp ui_temp matches 10 at @s run playsound block.glass.break player @a ~ ~ ~ 1 0.8
    execute if score $firetime.temp ui_temp matches 10 at @s run particle dust 0.3 0.7 1 1 ^ ^ ^4 2 2 2 0 60 force
    execute if score $firetime.temp ui_temp matches 10 at @s run particle block ice ^ ^ ^4 2 2 2 0 60 force
    execute if score $firetime.temp ui_temp matches 10 at @s run particle firework ^ ^ ^4 2 2 2 0 30 force
    execute if score $firetime.temp ui_temp matches 10 at @s positioned ^ ^ ^4 as @e[predicate=ui:load_unhurtable,distance=..1.9] run scoreboard players add @s tds_cold 20
    execute if score $firetime.temp ui_temp matches 10 at @s positioned ^ ^ ^4 as @e[predicate=ui:load_unhurtable,distance=..1.9] run effect give @s slowness 5 1 true
    execute if score $firetime.temp ui_temp matches 10 run data merge storage ui:common {input:{Mode:"create",Var:-10007}}
    execute if score $firetime.temp ui_temp matches 10 at @s rotated ~ 0 positioned ^ ^ ^4 run function ui:common/particle
