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
    execute if score $firetime.temp ui_temp matches 0..9 at @s run particle dust 0 0.8 0 1 ~ ~ ~ 0.5 0.5 0.5 0 1 force
    execute if score $firetime.temp ui_temp matches 10..19 at @s run particle dust 0 0.8 0 1 ~ ~ ~ 0.5 0.5 0.5 0 2 force
    execute if score $firetime.temp ui_temp matches 20..29 at @s run particle dust 0 0.8 0 1 ~ ~ ~ 0.5 0.5 0.5 0 4 force
    execute if score $firetime.temp ui_temp matches 30 at @s run playsound block.bell.use player @a ~ ~ ~ 1 1.5
    execute if score $firetime.temp ui_temp matches 30 at @s run particle dust 0.2 1 0.2 1 ~ ~ ~ 0.5 0.5 0.5 0 20 force
    execute if score $firetime.temp ui_temp matches 30 at @s run particle happy_villager ~ ~ ~ 0.5 0.5 0.5 0 10 force
    execute if score $firetime.temp ui_temp matches 30 run data merge storage ui:common {input:{Mode:"create",Var:-10006}}
    execute if score $firetime.temp ui_temp matches 30 at @s rotated ~ 0 positioned ^ ^ ^4 run function ui:common/particle
