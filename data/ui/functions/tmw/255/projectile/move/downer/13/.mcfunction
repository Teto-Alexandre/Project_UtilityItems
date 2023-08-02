##魔弾

# 最初
    #tellraw @a [{"score":{"name": "@s","objective": "ui_id"},"color": "red"},{"text":":"},{"score":{"name": "$id","objective": "ui_temp"},"color": "red"}]
    execute if entity @s[tag=!ui_tmw255_proj_move_-13_first] run function ui:tmw/255/projectile/move/downer/13/first

#
    execute as @a if score @s ui_id = $id ui_temp run tag @s add ui_temp_player

# 当たり判定拡張
    #tellraw @a [{"score":{"name": "@s","objective": "ui_id"},"color": "yellow"},{"text":":"},{"score":{"name": "$id","objective": "ui_temp"},"color": "yellow"}]
    #say @e[tag=!ui_temp_player,predicate=ui:load_unhurtable]
    execute at @s positioned ~-0.5 ~-0.2 ~-0.5 if entity @e[dx=0,tag=!ui_temp_player,predicate=ui:load_unhurtable] at @s positioned ~-0.5 ~-0.4 ~-0.5 if entity @e[dx=0,tag=!ui_temp_player,predicate=ui:load_unhurtable] at @s run function ui:tmw/255/projectile/hit/ff/check

# 見た目
    particle dust 0 0 1 0.8 ~ ~ ~ 0 0 0 0 1 force
    particle dust 0 0 1 0.8 ^ ^ ^0.25 0 0 0 0 1 force
    particle dust 0 1 1 0.6 ~ ~ ~ 0.3 0.3 0.3 0 1 force

#
    tag @a[tag=ui_temp_player] remove ui_temp_player