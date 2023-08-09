# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 10

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 0 run playsound entity.ender_dragon.flap player @a ~ ~ ~ 1 0.8 0
    execute if score $firetime.temp ui_temp matches 0 run particle dust 1 1 1 3 ~ ~1 ~ 1 1 1 0.1 20 force
    execute if score $firetime.temp ui_temp matches 0 run effect give @s slow_falling 10 0 false
