# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 5

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 0 at @s run playsound block.beacon.power_select player @a ~ ~ ~ 1 2
    execute if score $firetime.temp ui_temp matches 0..4 at @s run particle dust 1 1 1 1.2 ~ ~1 ~ 0.5 0.5 0.5 0 5 force
    execute if score $firetime.temp ui_temp matches 0 at @s run particle firework ~ ~1 ~ 0.5 0.5 0.5 0 10 force
    execute if score $firetime.temp ui_temp matches 5 at @s run particle firework ~ ~1 ~ 0.5 0.5 0.5 0 20 force
    execute if score $firetime.temp ui_temp matches 5 at @s run particle dust 1 1 1 2 ~ ~1 ~ 1 1 1 0 30 force
    execute if score $firetime.temp ui_temp matches 5 at @s run particle firework ~ ~1 ~ 0.5 0.5 0.5 0 30 force
    execute if score $firetime.temp ui_temp matches 5 at @s run playsound entity.wither.shoot player @a ~ ~ ~ 1 2
    execute if score $firetime.temp ui_temp matches 5 at @s run particle cloud ~ ~1 ~ 0.5 0.5 0.5 0.1 5 force
    execute if score $firetime.temp ui_temp matches 5 run data merge storage ui:common {input:{Mode:"create",Var:-10023,Num:16,Rand:{Pos:15000}}}
    execute if score $firetime.temp ui_temp matches 5 at @s run function ui:common/particle
