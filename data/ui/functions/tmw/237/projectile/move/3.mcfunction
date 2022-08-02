#当たり判定拡張
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^0.7 ^ ^ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ^0.7 ^ ^ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/237/projectile/hit
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^-0.7 ^ ^ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ^-0.7 ^ ^ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/237/projectile/hit

#見た目
    execute if score $team ui_temp matches 1 run function ui:tmw/237/projectile/move/3/1
    execute if score $team ui_temp matches 2 run function ui:tmw/237/projectile/move/3/2
    execute if score $team ui_temp matches 3 run function ui:tmw/237/projectile/move/3/3
    execute if score $team ui_temp matches 4 run function ui:tmw/237/projectile/move/3/4

# 消す
    execute if entity @s[tag=tmw_237_proj_del] run function ui:tmw/237/projectile/kill
