# knockback の追加効果
    data merge storage ui:common {input:{Mode:"knockback",Mult:100}}
    execute unless score $level ui_temp matches 0 store result storage ui:common input.Mult int 1 run scoreboard players get $level ui_temp
    execute positioned as @e[tag=ui_temp_hit] as @s facing entity @s feet rotated ~ -10 run function ui:common/motion/
