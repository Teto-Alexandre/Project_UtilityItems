# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 20

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 0 at @s run playsound entity.evoker.prepare_attack player @a ~ ~ ~ 1 1.5
    execute if score $firetime.temp ui_temp matches 0 at @s run particle dust 0.4 1 0.4 1 ~ ~ ~ 1 1 1 0 50 force
    execute if score $firetime.temp ui_temp matches 20 at @s run playsound block.bell.use player @a ~ ~ ~ 1 2
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run particle dust 0.4 1 0.4 1 ~ ~ ~ 1 1 1 0 50 force
    execute if score $firetime.temp ui_temp matches 20 run data merge storage ui:common {input:{Mode:"create",Var:-10015}}
    execute if score $firetime.temp ui_temp matches 20 at @s rotated ~ 0 run function ui:common/particle
