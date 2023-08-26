# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 in overworld store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 15

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 0 run data merge storage ui:common {input:{Mode:"create",Var:-10032,Var2:4,Rand:{RotY:1}}}
    execute if score $firetime.temp ui_temp matches 0 at @s rotated ~ 0 positioned ^ ^ ^2.5 positioned ~ ~1 ~ rotated ~90 0 run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 3 run data merge storage ui:common {input:{Mode:"create",Var:-10032,Var2:4,Rand:{RotY:1}}}
    execute if score $firetime.temp ui_temp matches 3 at @s rotated ~ 0 positioned ^ ^ ^2.5 positioned ~ ~1 ~ rotated ~90 0 run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 0 at @s run particle cloud ~ ~1 ~ 0.5 0.5 0.5 0.1 5 force
    execute if score $firetime.temp ui_temp matches 3 at @s run particle cloud ~ ~1 ~ 0.5 0.5 0.5 0.1 5 force
    execute if score $firetime.temp ui_temp matches 10 at @s run particle cloud ~ ~1 ~ 0.5 0.5 0.5 0.1 5 force
    execute if score $firetime.temp ui_temp matches 10 run data merge storage ui:common {input:{Mode:"create",Var:-10032,Var2:4}}
    execute if score $firetime.temp ui_temp matches 10 at @s rotated ~ 0 positioned ^ ^ ^2.5 positioned ~ ~1 ~ rotated ~90 -20 run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 10 run data merge storage ui:common {input:{Mode:"create",Var:-10032,Var2:4}}
    execute if score $firetime.temp ui_temp matches 10 at @s rotated ~ 0 positioned ^ ^ ^2.5 positioned ~ ~1 ~ rotated ~90 20 run function ui:common/particle
    
    execute if score $firetime.temp ui_temp matches 11 run data merge storage ui:common {input:{Mode:"knockback",Mult:250}}
    execute if score $firetime.temp ui_temp matches 11 at @s rotated ~ -20 run function ui:common/motion/
    execute if score $firetime.temp ui_temp matches 15 run effect give @s slow_falling 1 0 true
