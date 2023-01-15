# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 300

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 0.. run tp @s @s
    execute if score $firetime.temp ui_temp matches 0 at @s run playsound entity.evoker.prepare_summon player @a ~ ~ ~ 4 0.5
    execute if score $firetime.temp ui_temp matches 100 at @s run playsound entity.evoker.prepare_summon player @a ~ ~ ~ 4 0.5
    execute if score $firetime.temp ui_temp matches 220 at @s run playsound entity.evoker.prepare_attack player @a ~ ~ ~ 4 0.5
    execute if score $firetime.temp ui_temp matches 260 at @s run playsound entity.evoker.prepare_summon player @a ~ ~ ~ 4 1
    execute if score $firetime.temp ui_temp matches 0..19 at @s run particle dust 1 0.5 0 1 ~ ~1 ~ 0.2 0.2 0.2 0 1 force @a
    execute if score $firetime.temp ui_temp matches 20..39 at @s run particle dust 1 0.5 0 1 ~ ~1 ~ 0.4 0.4 0.4 0 2 force @a
    execute if score $firetime.temp ui_temp matches 40..59 at @s run particle dust 1 0.5 0 1 ~ ~1 ~ 0.6 0.6 0.6 0 3 force @a
    execute if score $firetime.temp ui_temp matches 60..79 at @s run particle dust 1 0.5 0 1 ~ ~1 ~ 0.8 0.8 0.8 0 4 force @a
    execute if score $firetime.temp ui_temp matches 80..99 at @s run particle dust 1 0.5 0 1 ~ ~1 ~ 1.0 1.0 1.0 0 5 force @a
    execute if score $firetime.temp ui_temp matches 100..119 at @s run particle dust 1 0.5 0 1 ~ ~1 ~ 1.2 1.2 1.2 0 6 force @a
    execute if score $firetime.temp ui_temp matches 120..139 at @s run particle dust 1 0.5 0 1 ~ ~1 ~ 1.4 1.4 1.4 0 7 force @a
    execute if score $firetime.temp ui_temp matches 140..159 at @s run particle dust 1 0.5 0 1 ~ ~1 ~ 1.6 1.6 1.6 0 8 force @a
    execute if score $firetime.temp ui_temp matches 160..179 at @s run particle dust 1 0.5 0 1 ~ ~1 ~ 1.8 1.8 1.8 0 9 force @a
    execute if score $firetime.temp ui_temp matches 180..199 at @s run particle dust 1 0.5 0 1 ~ ~1 ~ 2.0 2.0 2.0 0 10 force @a
    execute if score $firetime.temp ui_temp matches 200..219 at @s run particle dust 1 0.5 0 1 ~ ~1 ~ 2.2 2.2 2.2 0 11 force @a
    execute if score $firetime.temp ui_temp matches 220..239 at @s run particle dust 1 0.5 0 1 ~ ~1 ~ 2.4 2.4 2.4 0 12 force @a
    execute if score $firetime.temp ui_temp matches 240..259 at @s run particle dust 1 0.5 0 1 ~ ~1 ~ 2.6 2.6 2.6 0 13 force @a
    execute if score $firetime.temp ui_temp matches 260..279 at @s run particle dust 1 0.5 0 1 ~ ~1 ~ 2.8 2.8 2.8 0 14 force @a
    execute if score $firetime.temp ui_temp matches 280..299 at @s run particle dust 1 0.5 0 1 ~ ~1 ~ 3.0 3.0 3.0 0 15 force @a
    execute if score $firetime.temp ui_temp matches 80.. at @s run particle flame ~ ~1 ~ 3 3 3 0 1 force
    execute if score $firetime.temp ui_temp matches 160.. at @s run particle flame ~ ~1 ~ 3 1 3 0 2 force
    execute if score $firetime.temp ui_temp matches 240.. at @s run particle lava ~ ~1 ~ 3 1 3 0 1 force
    execute if score $firetime.temp ui_temp matches 100 at @s run playsound item.trident.thunder player @a ~ ~ ~ 4 0.8
    execute if score $firetime.temp ui_temp matches 100 at @s run playsound block.beacon.deactivate player @a ~ ~ ~ 5 0.8
    execute if score $firetime.temp ui_temp matches 100 at @s run playsound block.beacon.deactivate player @a ~ ~ ~ 5 0.5
    execute if score $firetime.temp ui_temp matches 200 at @s run playsound item.trident.return player @a ~ ~ ~ 3 0.5
    execute if score $firetime.temp ui_temp matches 300 at @s run playsound entity.wither.shoot player @a ~ ~ ~ 4 0.5
    execute if score $firetime.temp ui_temp matches 300 at @s run playsound entity.wither.spawn player @a ~ ~ ~ 4 1.5
    execute if score $firetime.temp ui_temp matches 300 at @s rotated ~ 0 run particle dust 1 0.5 0 2 ~ ~ ~ 3 2 3 0.1 200 force
    execute if score $firetime.temp ui_temp matches 300 at @s rotated ~ 0 run particle flame ~ ~ ~ 3 2 3 0.05 200 force
    execute if score $firetime.temp ui_temp matches 300 run data merge storage ui:common {input:{Mode:"create",Var:-10018,Num:1}}
    execute if score $firetime.temp ui_temp matches 300 at @s rotated ~ 0 positioned ^ ^ ^25 run function ui:common/particle
    
    scoreboard players operation $firetime.mod ui_temp = $firetime.temp ui_temp
    scoreboard players operation $firetime.mod ui_temp %= #2 ui_num
    execute if score $firetime.temp ui_temp matches 0..80 if score $firetime.mod ui_temp matches 0 at @s run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 100..199 if score $firetime.mod ui_temp matches 0 at @s rotated ~ 0 run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle2
    execute if score $firetime.temp ui_temp matches 200..299 at @s run scoreboard players operation $firetime.rot ui_temp = $firetime.temp ui_temp
    execute if score $firetime.temp ui_temp matches 200..299 at @s run scoreboard players remove $firetime.rot ui_temp 199
    execute if score $firetime.temp ui_temp matches 200..299 if score $firetime.mod ui_temp matches 0 at @s run function ui:tmw/255/player/crossbow/fire/id/upper/123/rotating
    execute if score $firetime.temp ui_temp matches 100..280 run data merge storage ui:common {input:{Mode:"create",Var:20,Num:1,Rand:{X:60,Z:60}}}
    execute if score $firetime.temp ui_temp matches 100..280 at @s rotated ~ 0 run function ui:common/particle
    
    execute if score $firetime.temp ui_temp matches 2 at @s positioned ~ ~0.1 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 4 at @s positioned ~ ~0.2 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 6 at @s positioned ~ ~0.3 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 8 at @s positioned ~ ~0.4 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 10 at @s positioned ~ ~0.5 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 12 at @s positioned ~ ~0.6 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 14 at @s positioned ~ ~0.7 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 16 at @s positioned ~ ~0.8 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 18 at @s positioned ~ ~0.9 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 20 at @s positioned ~ ~1.0 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 22 at @s positioned ~ ~1.1 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 24 at @s positioned ~ ~1.2 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 26 at @s positioned ~ ~1.3 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 28 at @s positioned ~ ~1.4 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 30 at @s positioned ~ ~1.5 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 32 at @s positioned ~ ~1.6 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 34 at @s positioned ~ ~1.7 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 36 at @s positioned ~ ~1.8 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 38 at @s positioned ~ ~1.9 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 40 at @s positioned ~ ~2.0 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 42 at @s positioned ~ ~2.1 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 44 at @s positioned ~ ~2.2 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 46 at @s positioned ~ ~2.3 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 48 at @s positioned ~ ~2.4 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 50 at @s positioned ~ ~2.5 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 52 at @s positioned ~ ~2.6 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 54 at @s positioned ~ ~2.7 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 56 at @s positioned ~ ~2.8 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 58 at @s positioned ~ ~2.9 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 60 at @s positioned ~ ~3.0 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 62 at @s positioned ~ ~3.1 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 64 at @s positioned ~ ~3.2 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 66 at @s positioned ~ ~3.3 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 68 at @s positioned ~ ~3.4 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 70 at @s positioned ~ ~3.5 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 72 at @s positioned ~ ~3.6 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 74 at @s positioned ~ ~3.7 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 76 at @s positioned ~ ~3.8 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 78 at @s positioned ~ ~3.9 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    execute if score $firetime.temp ui_temp matches 80 at @s positioned ~ ~4.0 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle
    
    execute if score $firetime.temp ui_temp matches 100..199 if score $firetime.mod ui_temp matches 0 at @s positioned ~ ~4.00 ~ rotated ~ 0 run function ui:tmw/255/player/crossbow/fire/id/upper/123/particle2
    execute if score $firetime.temp ui_temp matches 200..299 at @s run scoreboard players operation $firetime.rot ui_temp = $firetime.temp ui_temp
    execute if score $firetime.temp ui_temp matches 200..299 at @s run scoreboard players remove $firetime.rot ui_temp 199
    execute if score $firetime.temp ui_temp matches 200..299 if score $firetime.mod ui_temp matches 0 at @s positioned ~ ~4.00 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/123/rotating
