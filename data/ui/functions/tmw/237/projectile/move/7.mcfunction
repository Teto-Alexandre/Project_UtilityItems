#初期座標調整
    execute if entity @s[tag=!tmw_237_proj_first] at @s run teleport @s ~ ~3 ~
    execute if entity @s[tag=!tmw_237_proj_first] run tag @s add tmw_237_proj_first
#当たり判定拡張
    execute positioned ~ ~-1.0 ~ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ~ ~-1.0 ~ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/237/projectile/hit
    execute positioned ~ ~-2.0 ~ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ~ ~-2.0 ~ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/237/projectile/hit
    execute positioned ~ ~-3.0 ~ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ~ ~-3.0 ~ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/237/projectile/hit
    execute positioned ~ ~-4.0 ~ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ~ ~-4.0 ~ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/237/projectile/hit
    execute positioned ~ ~-5.0 ~ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ~ ~-5.0 ~ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/237/projectile/hit
    execute positioned ~ ~-6.0 ~ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ~ ~-6.0 ~ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/237/projectile/hit
#見た目
    execute if score $team ui_temp matches 1 at @s run particle dust 0.5 1 1 1.2 ~ ~-1.5 ~ 0.3 1.5 0.3 0 5 force
    execute if score $team ui_temp matches 1 at @s run particle block light_blue_concrete ~ ~-1.5 ~ 0.3 1.5 0.3 0 5 force
    execute if score $team ui_temp matches 1 at @s store result score $paint ui_temp run fill ~-0.3 ~ ~-0.3 ~0.3 ~-6 ~0.3 light_blue_wool replace #ui:wools
    execute if score $team ui_temp matches 2 at @s run particle dust 1 0.5 1 1.2 ~ ~-1.5 ~ 0.3 1.5 0.3 0 5 force
    execute if score $team ui_temp matches 2 at @s run particle block pink_concrete ~ ~-1.5 ~ 0.3 1.5 0.3 0 5 force
    execute if score $team ui_temp matches 2 at @s store result score $paint ui_temp run fill ~-0.3 ~ ~-0.3 ~0.3 ~-6 ~0.3 pink_wool replace #ui:wools
