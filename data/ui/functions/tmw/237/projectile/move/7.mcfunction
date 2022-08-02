#初期座標調整
    execute if entity @s[tag=!tmw_237_proj_first] at @s run teleport @s ~ ~3 ~
    execute if entity @s[tag=!tmw_237_proj_first] run tag @s add tmw_237_proj_first
#当たり判定拡張
    execute if entity @s[tag=!tmw_237_proj_del] positioned ~ ~-1.0 ~ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!ui_temp_attacked_free] at @s positioned ~ ~-1.0 ~ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!ui_temp_attacked_free] at @s run function ui:tmw/237/projectile/hit_free
    execute if entity @s[tag=!tmw_237_proj_del] positioned ~ ~-2.0 ~ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!ui_temp_attacked_free] at @s positioned ~ ~-2.0 ~ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!ui_temp_attacked_free] at @s run function ui:tmw/237/projectile/hit_free
    execute if entity @s[tag=!tmw_237_proj_del] positioned ~ ~-3.0 ~ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!ui_temp_attacked_free] at @s positioned ~ ~-3.0 ~ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!ui_temp_attacked_free] at @s run function ui:tmw/237/projectile/hit_free
    execute if entity @s[tag=!tmw_237_proj_del] positioned ~ ~-4.0 ~ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!ui_temp_attacked_free] at @s positioned ~ ~-4.0 ~ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!ui_temp_attacked_free] at @s run function ui:tmw/237/projectile/hit_free
    execute if entity @s[tag=!tmw_237_proj_del] positioned ~ ~-5.0 ~ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!ui_temp_attacked_free] at @s positioned ~ ~-5.0 ~ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!ui_temp_attacked_free] at @s run function ui:tmw/237/projectile/hit_free
    execute if entity @s[tag=!tmw_237_proj_del] positioned ~ ~-6.0 ~ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!ui_temp_attacked_free] at @s positioned ~ ~-6.0 ~ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!ui_temp_attacked_free] at @s run function ui:tmw/237/projectile/hit_free
#見た目
    execute if score $team ui_temp matches 1 run function ui:tmw/237/projectile/move/7/1
    execute if score $team ui_temp matches 2 run function ui:tmw/237/projectile/move/7/2
    execute if score $team ui_temp matches 3 run function ui:tmw/237/projectile/move/7/3
    execute if score $team ui_temp matches 4 run function ui:tmw/237/projectile/move/7/4

# 消す
    execute if entity @s[tag=tmw_237_proj_del] run function ui:tmw/237/projectile/kill
