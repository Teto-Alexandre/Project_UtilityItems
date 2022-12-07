# これです
    tag @s add ui_temp_this

# 初期衝撃波
    execute if entity @s[tag=!tmw_237_proj_first] positioned ^ ^ ^3 positioned ~ ~-0.9 ~ as @e[distance=..3,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s as @e[tag=ui_temp_this] run function ui:tmw/237/projectile/hit_free
    execute if entity @s[tag=!tmw_237_proj_first] positioned ^ ^ ^3 run particle enchanted_hit ~ ~ ~ 1 1 1 1 15 force
    execute if entity @s[tag=!tmw_237_proj_first] run tag @s add tmw_237_proj_first
    
#
    tag @s remove ui_temp_this

# 当たり判定拡張
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^0.6 ^ ^ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ^0.6 ^ ^ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/237/projectile/hit
    execute if entity @s[tag=!tmw_237_proj_del] positioned ^-0.6 ^ ^ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ^-0.6 ^ ^ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/237/projectile/hit

# 見た目
    execute if score $team ui_temp matches 1 if predicate ui:percentage/40 run function ui:tmw/237/projectile/move/10/1
    execute if score $team ui_temp matches 2 if predicate ui:percentage/40 run function ui:tmw/237/projectile/move/10/2
    execute if score $team ui_temp matches 3 if predicate ui:percentage/40 run function ui:tmw/237/projectile/move/10/3
    execute if score $team ui_temp matches 4 if predicate ui:percentage/40 run function ui:tmw/237/projectile/move/10/4

# 消す
    execute if entity @s[tag=tmw_237_proj_del] run function ui:tmw/237/projectile/kill
