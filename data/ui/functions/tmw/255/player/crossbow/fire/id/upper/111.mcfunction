# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 in overworld store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 30

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 0 at @s run playsound item.flintandsteel.use player @a ~ ~ ~ 1 1
    execute if score $firetime.temp ui_temp matches 0 at @s run particle small_flame ~ ~ ~ 0 0 0 0.05 5 force
    execute if score $firetime.temp ui_temp matches 10 at @s run playsound item.flintandsteel.use player @a ~ ~ ~ 1 1
    execute if score $firetime.temp ui_temp matches 10 at @s run particle small_flame ~ ~ ~ 0 0 0 0.05 5 force
    execute if score $firetime.temp ui_temp matches 20 at @s run playsound item.flintandsteel.use player @a ~ ~ ~ 1 1
    execute if score $firetime.temp ui_temp matches 20 at @s run particle small_flame ~ ~ ~ 0 0 0 0.05 5 force
    execute if score $firetime.temp ui_temp matches 30 at @s run playsound block.redstone_torch.burnout player @a ~ ~ ~ 1 1.5
    execute if score $firetime.temp ui_temp matches 30 at @s run particle dust 0.2 0.2 0.2 1 ~ ~ ~ 0.5 0.5 0.5 0 20 force
    execute if score $firetime.temp ui_temp matches 30 at @s run particle large_smoke ~ ~ ~ 0.5 0.5 0.5 0 10 force
    execute if score $firetime.temp ui_temp matches 30 run data merge storage ui:common {input:{Mode:"create",Var:-10004}}
    execute if score $firetime.temp ui_temp matches 30 at @s run function ui:common/particle
