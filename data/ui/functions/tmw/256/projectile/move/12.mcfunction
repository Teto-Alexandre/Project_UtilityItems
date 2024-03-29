# これです
    tag @s add ui_temp_this

# 初期衝撃波
    execute if entity @s[tag=!tmw_256_proj_first] positioned ^ ^ ^ positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s as @e[tag=ui_temp_this] run function ui:tmw/256/projectile/hit_free
    execute if entity @s[tag=!tmw_256_proj_first] positioned ^ ^ ^1 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!ui_temp_team,tag=!ui_temp_attacked_free,predicate=ui:load_unhurtable] at @s as @e[tag=ui_temp_this] run function ui:tmw/256/projectile/hit_free
    execute if entity @s[tag=!tmw_256_proj_first] run tag @s add tmw_256_proj_first
    
#
    tag @s remove ui_temp_this

# 当たり判定拡張
    execute if entity @s[tag=!tmw_256_proj_del] positioned ^ ^0.1 ^ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ^ ^0.4 ^ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/256/projectile/hit
    execute if entity @s[tag=!tmw_256_proj_del] positioned ^ ^-0.1 ^ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ^ ^-0.4 ^ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/256/projectile/hit
    execute if entity @s[tag=!tmw_256_proj_del] positioned ^ ^0.7 ^ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ^ ^1.0 ^ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/256/projectile/hit
    execute if entity @s[tag=!tmw_256_proj_del] positioned ^ ^-0.7 ^ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ^ ^-1.0 ^ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/256/projectile/hit
    execute if entity @s[tag=!tmw_256_proj_del] positioned ^ ^1.0 ^ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ^ ^1.2 ^ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/256/projectile/hit
    execute if entity @s[tag=!tmw_256_proj_del] positioned ^ ^-1.0 ^ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ^ ^-1.2 ^ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/256/projectile/hit

# 見た目
    scoreboard players operation $temp ui_temp = $world ui_tc
    scoreboard players operation $temp ui_temp %= #2 ui_num
    execute if score $temp ui_temp matches 0 if score $team ui_temp matches 1 run function ui:tmw/256/projectile/move/12/1
    execute if score $temp ui_temp matches 0 if score $team ui_temp matches 2 run function ui:tmw/256/projectile/move/12/2
    execute if score $temp ui_temp matches 0 if score $team ui_temp matches 3 run function ui:tmw/256/projectile/move/12/3
    execute if score $temp ui_temp matches 0 if score $team ui_temp matches 4 run function ui:tmw/256/projectile/move/12/4

# 消す
    execute if entity @s[tag=tmw_256_proj_del] run function ui:tmw/256/projectile/kill
