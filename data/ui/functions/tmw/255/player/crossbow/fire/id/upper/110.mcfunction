# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 40

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 0 at @s run playsound entity.evoker.prepare_attack player @a ~ ~ ~ 1 0.8
    execute if score $firetime.temp ui_temp matches 0..7 at @s run particle dust 1.0 1.0 1.0 0.8 ~ ~ ~ 1 0.1 1 0 20 force
    execute if score $firetime.temp ui_temp matches 8..15 at @s run particle dust 0.8 0.8 0.8 0.8 ~ ~ ~ 1 0.1 1 0 20 force
    execute if score $firetime.temp ui_temp matches 16..23 at @s run particle dust 0.6 0.6 0.6 0.8 ~ ~ ~ 1 0.1 1 0 20 force
    execute if score $firetime.temp ui_temp matches 24..31 at @s run particle dust 0.4 0.4 0.4 0.8 ~ ~ ~ 1 0.1 1 0 20 force
    execute if score $firetime.temp ui_temp matches 32..39 at @s run particle dust 0.2 0.2 0.2 0.8 ~ ~ ~ 1 0.1 1 0 20 force
    execute if score $firetime.temp ui_temp matches 40 at @s run playsound item.trident.thunder player @a ~ ~ ~ 1 1.2
    execute if score $firetime.temp ui_temp matches 40 at @s run particle dust 0.2 0.2 0.2 0.5 ~ ~ ~ 1.5 0.1 1.5 0 50 force
    execute if score $firetime.temp ui_temp matches 40 at @s run particle electric_spark ~ ~ ~ 1 0.1 1 1 100 force
    execute if score $firetime.temp ui_temp matches 40 run data merge storage ui:common {input:{Mode:"create",Var:-1}}
    execute if score $firetime.temp ui_temp matches 40 at @s run function ui:common/particle
