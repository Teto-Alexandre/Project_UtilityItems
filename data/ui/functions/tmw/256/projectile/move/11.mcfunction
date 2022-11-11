# これです
    tag @s add ui_temp_this

# 初期衝撃波
    execute if entity @s[tag=!tmw_256_proj_first] positioned ^ ^ ^0.4 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s as @e[tag=ui_temp_this] run function ui:tmw/256/projectile/hit_free
    execute if entity @s[tag=!tmw_256_proj_first] positioned ^ ^ ^0.4 run particle enchanted_hit ~ ~ ~ 1 1 1 1 15 force
    execute if entity @s[tag=!tmw_256_proj_first] run tag @s add tmw_256_proj_first
    
#
    tag @s remove ui_temp_this

# 見た目
    scoreboard players operation $temp ui_temp = $world ui_tc
    scoreboard players operation $temp ui_temp %= #2 ui_num
    execute if score $temp ui_temp matches 0 if score $team ui_temp matches 1 run function ui:tmw/256/projectile/move/11/1
    execute if score $temp ui_temp matches 0 if score $team ui_temp matches 2 run function ui:tmw/256/projectile/move/11/2
    execute if score $temp ui_temp matches 0 if score $team ui_temp matches 3 run function ui:tmw/256/projectile/move/11/3
    execute if score $temp ui_temp matches 0 if score $team ui_temp matches 4 run function ui:tmw/256/projectile/move/11/4

# 消す
    execute if entity @s[tag=tmw_256_proj_del] run function ui:tmw/256/projectile/kill
