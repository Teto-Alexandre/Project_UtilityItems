# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 in overworld store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 2

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 0 at @s run playsound block.bell.use player @a ~ ~ ~ 1 1.5
    execute if score $firetime.temp ui_temp matches 0 at @s run particle dust 1 0.8 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 20 force
    execute if score $firetime.temp ui_temp matches 2 run data merge storage ui:common {input:{Mode:"create",Var:-10027,Num:10}}
    execute if score $firetime.temp ui_temp matches 2 at @s anchored eyes positioned ^ ^ ^ run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 2 if score @s ui_tmw601_accessory matches 5001 run data merge storage ui:common {input:{Mode:"create",Var:-10027,Num:10,Var2:10}}
    execute if score $firetime.temp ui_temp matches 2 if score @s ui_tmw601_accessory matches 5001 at @s anchored eyes positioned ^ ^ ^ run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 2 if score @s ui_tmw601_accessory matches 5001 run data merge storage ui:common {input:{Mode:"create",Var:-10027,Num:25,Var2:30}}
    execute if score $firetime.temp ui_temp matches 2 if score @s ui_tmw601_accessory matches 5001 at @s anchored eyes positioned ^ ^ ^ run function ui:common/particle
