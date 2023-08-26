# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 in overworld store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 10

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 0 run playsound entity.ghast.shoot player @a ~ ~ ~ 1 1
    execute if score $firetime.temp ui_temp matches 0 at @s anchored eyes run summon fireball ^ ^ ^1.5 {ExplosionPower:3,Tags:["ui_temp_obj"]}
    execute if score $firetime.temp ui_temp matches 0 at @s anchored eyes positioned ^ ^ ^1.5 as @e[tag=ui_temp_obj] run function ui:template/acc_power/0.2
    execute if score $firetime.temp ui_temp matches 0 run tag @e[tag=ui_temp_obj] remove ui_temp_obj
