# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 50

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 0 at @s run playsound entity.evoker.prepare_attack player @a ~ ~ ~ 1 0.75
    execute if score $firetime.temp ui_temp matches 25 at @s run playsound entity.evoker.prepare_attack player @a ~ ~ ~ 1 1.5
    execute if score $firetime.temp ui_temp matches 0..9 at @s run particle dust 0.2 0.1 0 1.1 ~ ~ ~ 1 0.1 1 0 20 normal
    execute if score $firetime.temp ui_temp matches 10..19 at @s run particle dust 0.4 0.2 0 1.1 ~ ~ ~ 1 0.1 1 0 20 normal
    execute if score $firetime.temp ui_temp matches 20..29 at @s run particle dust 0.6 0.3 0 1.1 ~ ~ ~ 1 0.1 1 0 20 normal
    execute if score $firetime.temp ui_temp matches 30..39 at @s run particle dust 0.8 0.4 0 1.1 ~ ~ ~ 1 0.1 1 0 20 normal
    execute if score $firetime.temp ui_temp matches 40..49 at @s run particle dust 1.0 0.5 0 1.1 ~ ~ ~ 1 0.1 1 0 20 normal
    execute if score $firetime.temp ui_temp matches 25.. at @s run particle flame ~ ~ ~ 1 0.1 1 0 10 normal
    execute if score $firetime.temp ui_temp matches 50 at @s run playsound entity.ghast.shoot player @a ~ ~ ~ 1 0.6
    execute if score $firetime.temp ui_temp matches 50 at @s run playsound entity.wither.shoot player @a ~ ~ ~ 1 0.8
    execute if score $firetime.temp ui_temp matches 50 at @s run particle dust 1 0.2 0.2 0.5 ~ ~ ~ 1.5 0.1 1.5 0 50 normal
    execute if score $firetime.temp ui_temp matches 50 at @s run particle small_flame ~ ~ ~ 1 0.1 1 0.1 100 normal
    execute if score $firetime.temp ui_temp matches 50 at @s anchored eyes run summon fireball ^ ^ ^1.5 {ExplosionPower:7,Tags:["ui_temp_obj"]}
    execute if score $firetime.temp ui_temp matches 50 at @s anchored eyes positioned ^ ^ ^1.5 as @e[tag=ui_temp_obj] run function ui:template/acc_power/0.2
    execute if score $firetime.temp ui_temp matches 50 run tag @e[tag=ui_temp_obj] remove ui_temp_obj
