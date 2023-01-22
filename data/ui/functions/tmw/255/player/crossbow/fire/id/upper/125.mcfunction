# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 30

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 0 at @s run playsound block.beacon.activate player @a ~ ~ ~ 1 2
    execute if score $firetime.temp ui_temp matches 0..9 at @s run particle dust 1 1 1 1.2 ~ ~1 ~ 0.5 0.5 0.5 0 5 force
    execute if score $firetime.temp ui_temp matches 00 at @s run particle firework ~ ~1 ~ 0.5 0.5 0.5 0 10 force
    execute if score $firetime.temp ui_temp matches 10..19 at @s run particle dust 1 1 1 1.5 ~ ~1 ~ 0.5 0.5 0.5 0 5 force
    execute if score $firetime.temp ui_temp matches 10 at @s run particle firework ~ ~1 ~ 0.5 0.5 0.5 0 20 force
    execute if score $firetime.temp ui_temp matches 20 at @s run particle dust 1 1 1 2 ~ ~1 ~ 1 1 1 0 30 force
    execute if score $firetime.temp ui_temp matches 20 at @s run particle firework ~ ~1 ~ 0.5 0.5 0.5 0 30 force
    execute if score $firetime.temp ui_temp matches 20.. run data merge storage ui:common {input:{Mode:"create",Var:-10021,Rand:{Rot:1000,Pos:1000}}}
    execute if score $firetime.temp ui_temp matches 20.. at @s run playsound entity.wither.shoot player @a ~ ~ ~ 1 2
    execute if score $firetime.temp ui_temp matches 20.. at @s run particle cloud ~ ~1 ~ 0.5 0.5 0.5 0.1 5 force
    execute if score $firetime.temp ui_temp matches 20.. at @s rotated ~ 0 positioned ^ ^ ^2.5 positioned ~ ~1 ~ rotated ~90 0 run function ui:common/particle
