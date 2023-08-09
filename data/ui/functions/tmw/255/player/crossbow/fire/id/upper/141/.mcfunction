# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 10

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 0 run playsound entity.chicken.ambient player @a ~ ~ ~ 1 1
    execute if score $firetime.temp ui_temp matches 0 run playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 1 1
    execute if score $firetime.temp ui_temp matches 0 run playsound entity.lightning_bolt.impact player @a ~ ~ ~ 1 1
    execute if score $firetime.temp ui_temp matches 0 run particle end_rod ~ ~5 ~ 0.1 5 0.1 0.1 200 force
    execute if score $firetime.temp ui_temp matches 0 run particle dust 1 1 1 5 ~ ~0.9 ~ 1 1 1 0 50 force
    execute if score $firetime.temp ui_temp matches 0 run effect clear @s glowing
    execute if score $firetime.temp ui_temp matches 0 run effect give @s invisibility 5 0 false
    execute if score $firetime.temp ui_temp matches 0 run scoreboard players set @s tz_notglow 600
    execute if score $firetime.temp ui_temp matches 0 run tag @s add tmw_255_fire_141_temp_armor
    execute if score $firetime.temp ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/id/upper/141/armor
    execute if score $firetime.temp ui_temp matches 0 run schedule function ui:tmw/255/player/crossbow/fire/id/upper/141/ss 5s replace
