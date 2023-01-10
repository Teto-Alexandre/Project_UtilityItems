# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 53

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 0 at @s run playsound entity.evoker.prepare_attack player @a ~ ~ ~ 1 0.6
    execute if score $firetime.temp ui_temp matches 0 at @s positioned ~ ~0.1 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/112/particle
    execute if score $firetime.temp ui_temp matches 0..25 at @s run particle small_flame ~ ~ ~ 0.3 0.3 0.3 0.05 2 force
    execute if score $firetime.temp ui_temp matches 26..52 at @s run particle small_flame ~ ~ ~ 0.3 0.3 0.3 0.1 2 force
    execute if score $firetime.temp ui_temp matches 53 at @s positioned ~ ~0.1 ~ run function ui:tmw/255/player/crossbow/fire/id/upper/112/particle
    execute if score $firetime.temp ui_temp matches 53 at @s run playsound block.lava.extinguish player @a ~ ~ ~ 1 0.8
    execute if score $firetime.temp ui_temp matches 53 at @s run particle dust 1 0.5 0.2 1.2 ~ ~ ~ 0.5 0.5 0.5 0 10 force
    execute if score $firetime.temp ui_temp matches 53 at @s run particle flame ~ ~ ~ 0.5 0.5 0.5 0 10 force
    execute if score $firetime.temp ui_temp matches 53 run data merge storage ui:common {input:{Mode:"create",Var:-10005}}
    execute if score $firetime.temp ui_temp matches 53 at @s positioned ~ ~0.1 ~ run function ui:common/particle
