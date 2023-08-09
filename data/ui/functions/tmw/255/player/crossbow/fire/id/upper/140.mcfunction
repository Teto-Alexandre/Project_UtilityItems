# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 10

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 0 run playsound entity.zombie_villager.converted player @a ~ ~ ~ 1 1 0
    execute if score $firetime.temp ui_temp matches 0 run particle angry_villager ~ ~0.9 ~ 0.5 0.5 0.5 0 10 force
    execute if score $firetime.temp ui_temp matches 0 run particle dust 3 3 3 1 ~ ~0.9 ~ 1 1 1 0 50 force
    execute if score $firetime.temp ui_temp matches 0 run effect give @s haste 15 1 false
    execute if score $firetime.temp ui_temp matches 0 run effect give @s speed 15 1 false
