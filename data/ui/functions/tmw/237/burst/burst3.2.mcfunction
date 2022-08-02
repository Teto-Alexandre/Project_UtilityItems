# バースト回数記録
    execute if score $basetype ui_temp matches 1 run function ui:tmw/237/basetype/burst/1
    execute if score $basetype ui_temp matches 2 run function ui:tmw/237/basetype/burst/2
    execute if score $basetype ui_temp matches 3 run function ui:tmw/237/basetype/burst/3
    execute if score $basetype ui_temp matches -1 run function ui:tmw/237/basetype/burst/sp
    execute if score $basetype ui_temp matches -2 run function ui:tmw/237/basetype/burst/sub
    scoreboard players operation @s ui_use2 *= #10 ui_num
    execute store result score $burst ui_temp run scoreboard players operation @s ui_use2 /= $burst ui_temp
    #tellraw @a {"score":{"name":"$burst","objective":"ui_temp"},"color":"gold"}
    #execute at @s run playsound entity.experience_orb.pickup player @a ~ ~ ~ 0.5 1.8 0
    scoreboard players set $changed ui_temp 1

# クリック回数リセット
    scoreboard players reset @s ui_use2