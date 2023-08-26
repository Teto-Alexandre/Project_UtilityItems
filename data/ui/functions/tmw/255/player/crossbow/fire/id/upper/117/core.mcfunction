# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 in overworld store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 120

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 0 at @s run playsound block.bell.use player @a ~ ~ ~ 3 0.5
    execute if score $firetime.temp ui_temp matches 0 at @s run playsound block.bell.resonate player @a ~ ~ ~ 3 0.5
    execute if score $firetime.temp ui_temp matches 60 at @s run playsound entity.evoker.prepare_attack player @a ~ ~ ~ 3 0.6
    execute if score $firetime.temp ui_temp matches 0 at @s rotated 0 0 run function ui:common/particle/ss/downer/10012/period1
    execute if score $firetime.temp ui_temp matches 0 at @s rotated 0 0 run function ui:common/particle/ss/downer/10012/period2
    execute if score $firetime.temp ui_temp matches 20 at @s rotated 0 0 run function ui:common/particle/ss/downer/10012/period1
    execute if score $firetime.temp ui_temp matches 40 at @s rotated 0 0 run function ui:common/particle/ss/downer/10012/period1
    execute if score $firetime.temp ui_temp matches 60 at @s rotated 0 0 run function ui:common/particle/ss/downer/10012/period1
    execute if score $firetime.temp ui_temp matches 80 at @s rotated 0 0 run function ui:common/particle/ss/downer/10012/period1
    execute if score $firetime.temp ui_temp matches 100 at @s rotated 0 0 run function ui:common/particle/ss/downer/10012/period1
    execute if score $firetime.temp ui_temp matches 120 at @s rotated 0 0 run function ui:common/particle/ss/downer/10012/period1
    execute if score $firetime.temp ui_temp matches 120 at @s rotated 0 0 run function ui:common/particle/ss/downer/10012/period2
    execute if score $firetime.temp ui_temp matches 0..19 at @s run particle dust 1 1 1 1 ~ ~1 ~ 0.5 0.5 0.5 0 1 force
    execute if score $firetime.temp ui_temp matches 0..19 at @s run particle note ~ ~1 ~ 0.5 0.5 0.5 0 1 force
    execute if score $firetime.temp ui_temp matches 20..39 at @s run particle dust 1 1 1 1 ~ ~1 ~ 1.0 1.0 1.0 0 2 force
    execute if score $firetime.temp ui_temp matches 20..39 at @s run particle note ~ ~1 ~ 1.0 1.0 1.0 0 2 force
    execute if score $firetime.temp ui_temp matches 40..59 at @s run particle dust 1 1 1 1 ~ ~1 ~ 1.5 1.5 1.5 0 3 force
    execute if score $firetime.temp ui_temp matches 40..59 at @s run particle note ~ ~1 ~ 1.5 1.5 1.5 0 3 force
    execute if score $firetime.temp ui_temp matches 60..79 at @s run particle dust 1 1 1 1 ~ ~1 ~ 2.0 2.0 2.0 0 4 force
    execute if score $firetime.temp ui_temp matches 60..79 at @s run particle note ~ ~1 ~ 2.0 2.0 2.0 0 4 force
    execute if score $firetime.temp ui_temp matches 80..99 at @s run particle dust 1 1 1 1 ~ ~1 ~ 2.5 2.5 2.5 0 5 force
    execute if score $firetime.temp ui_temp matches 80..99 at @s run particle note ~ ~1 ~ 2.5 2.5 2.5 0 5 force
    execute if score $firetime.temp ui_temp matches 100..119 at @s run particle dust 1 1 1 1 ~ ~1 ~ 3.0 3.0 3.0 0 6 force
    execute if score $firetime.temp ui_temp matches 100..119 at @s run particle note ~ ~1 ~ 3.0 3.0 3.0 0 6 force
    execute if score $firetime.temp ui_temp matches 120 at @s run playsound item.trident.thunder player @a ~ ~ ~ 3 0.8
    execute if score $firetime.temp ui_temp matches 120 at @s run playsound block.bell.use player @a ~ ~ ~ 5 0.6
    execute if score $firetime.temp ui_temp matches 120 run data merge storage ui:common {input:{Mode:"create",Var:-10012}}
    execute if score $firetime.temp ui_temp matches 120 at @s rotated ~ 0 run function ui:common/particle
