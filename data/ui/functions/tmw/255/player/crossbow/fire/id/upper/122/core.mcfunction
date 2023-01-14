# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 200
    scoreboard players operation $firetime.mod ui_temp = $firetime.temp ui_temp
    scoreboard players operation $firetime.mod ui_temp %= #20 ui_num

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 0 at @s run function ui:tmw/255/player/crossbow/fire/id/upper/122/particle2
    execute if score $firetime.temp ui_temp matches 100 at @s run function ui:tmw/255/player/crossbow/fire/id/upper/122/particle2
    execute if score $firetime.temp ui_temp matches 200 at @s run function ui:tmw/255/player/crossbow/fire/id/upper/122/particle2
    execute if score $firetime.mod ui_temp matches 0 at @s rotated ~0 0 run function ui:tmw/255/player/crossbow/fire/id/upper/121/particle
    execute if score $firetime.mod ui_temp matches 5 at @s rotated ~15 0 run function ui:tmw/255/player/crossbow/fire/id/upper/121/particle
    execute if score $firetime.mod ui_temp matches 10 at @s rotated ~30 0 run function ui:tmw/255/player/crossbow/fire/id/upper/121/particle
    execute if score $firetime.mod ui_temp matches 15 at @s rotated ~45 0 run function ui:tmw/255/player/crossbow/fire/id/upper/121/particle
    execute if score $firetime.mod ui_temp matches 0 if score $firetime.temp ui_temp matches 1..199 unless score $firetime.temp ui_temp matches 100 at @s run function ui:tmw/255/player/crossbow/fire/id/upper/122/particle
    execute if score $firetime.temp ui_temp matches 0 at @s run playsound entity.evoker.prepare_summon player @a ~ ~ ~ 4 0.5
    execute if score $firetime.temp ui_temp matches 40 at @s run playsound block.respawn_anchor.charge player @a ~ ~ ~ 2 0.5
    execute if score $firetime.temp ui_temp matches 60 at @s run playsound block.respawn_anchor.charge player @a ~ ~ ~ 2 0.75
    execute if score $firetime.temp ui_temp matches 80 at @s run playsound block.respawn_anchor.charge player @a ~ ~ ~ 2 1
    execute if score $firetime.temp ui_temp matches 100 at @s run playsound entity.evoker.prepare_summon player @a ~ ~ ~ 4 0.5
    execute if score $firetime.temp ui_temp matches 120 at @s run playsound entity.evoker.prepare_attack player @a ~ ~ ~ 4 0.5
    execute if score $firetime.temp ui_temp matches 160 at @s run playsound entity.evoker.prepare_summon player @a ~ ~ ~ 4 1
    execute if score $firetime.temp ui_temp matches 0..19 at @s run particle dust 0.5 1 0.5 1 ~ ~1 ~ 0.3 0.3 0.3 0 1 force @a
    execute if score $firetime.temp ui_temp matches 20..39 at @s run particle dust 0.5 1 0.5 1 ~ ~1 ~ 0.6 0.6 0.6 0 2 force @a
    execute if score $firetime.temp ui_temp matches 40..59 at @s run particle dust 0.5 1 0.5 1 ~ ~1 ~ 0.9 0.9 0.9 0 3 force @a
    execute if score $firetime.temp ui_temp matches 60..79 at @s run particle dust 0.5 1 0.5 1 ~ ~1 ~ 1.2 1.2 1.2 0 4 force @a
    execute if score $firetime.temp ui_temp matches 80..99 at @s run particle dust 0.5 1 0.5 1 ~ ~1 ~ 1.5 1.5 1.5 0 5 force @a
    execute if score $firetime.temp ui_temp matches 100..119 at @s run particle dust 0.5 1 0.5 1 ~ ~1 ~ 1.8 1.8 1.8 0 6 force @a
    execute if score $firetime.temp ui_temp matches 120..139 at @s run particle dust 0.5 1 0.5 1 ~ ~1 ~ 2.1 2.1 2.1 0 7 force @a
    execute if score $firetime.temp ui_temp matches 140..159 at @s run particle dust 0.5 1 0.5 1 ~ ~1 ~ 2.4 2.4 2.4 0 8 force @a
    execute if score $firetime.temp ui_temp matches 160..179 at @s run particle dust 0.5 1 0.5 1 ~ ~1 ~ 2.7 2.7 2.7 0 9 force @a
    execute if score $firetime.temp ui_temp matches 180..199 at @s run particle dust 0.5 1 0.5 1 ~ ~1 ~ 3.0 3.0 3.0 0 10 force @a
    execute if score $firetime.temp ui_temp matches 66.. at @s run particle sweep_attack ~ ~1 ~ 3 3 3 0 1 force
    execute if score $firetime.temp ui_temp matches 133.. at @s run particle sweep_attack ~ ~1 ~ 3 1 3 0 1 force
    execute if score $firetime.temp ui_temp matches 200 at @s run playsound entity.wither.shoot player @a ~ ~ ~ 4 0.5
    execute if score $firetime.temp ui_temp matches 200 at @s run playsound entity.wither.spawn player @a ~ ~ ~ 4 1.5
    execute if score $firetime.temp ui_temp matches 200 at @s rotated ~ 0 run particle dust 0.5 1 0.5 1 ~ ~ ~ 2 2 2 0.1 50 force
    execute if score $firetime.temp ui_temp matches 200 run data merge storage ui:common {input:{Mode:"create",Var:-10017,Num:1}}
    execute if score $firetime.temp ui_temp matches 200 at @s rotated ~ 0 run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 200 run data merge storage ui:common {input:{Mode:"create",Var:-10017,Num:1}}
    execute if score $firetime.temp ui_temp matches 200 at @s rotated ~5 0 run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 200 run data merge storage ui:common {input:{Mode:"create",Var:-10017,Num:1}}
    execute if score $firetime.temp ui_temp matches 200 at @s rotated ~10 0 run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 200 run data merge storage ui:common {input:{Mode:"create",Var:-10017,Num:1}}
    execute if score $firetime.temp ui_temp matches 200 at @s rotated ~-5 0 run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 200 run data merge storage ui:common {input:{Mode:"create",Var:-10017,Num:1}}
    execute if score $firetime.temp ui_temp matches 200 at @s rotated ~-10 0 run function ui:common/particle
