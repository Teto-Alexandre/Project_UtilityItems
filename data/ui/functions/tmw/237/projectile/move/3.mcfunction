#当たり判定拡張
    execute positioned ^0.7 ^ ^ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ^0.7 ^ ^ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/237/projectile/hit
    execute positioned ^-0.7 ^ ^ positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ^-0.7 ^ ^ positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/237/projectile/hit
#見た目
    execute if score $team ui_temp matches 1 run particle dust 0.5 1 1 1.2 ~ ~-0.3 ~ 0 0.45 0 0 1 force
    execute if score $team ui_temp matches 1 run particle block light_blue_concrete ^1.2 ^ ^-1 0 0 0 0 1 force
    execute if score $team ui_temp matches 1 run particle block light_blue_concrete ^0.9 ^ ^-0.5 0 0 0 0 1 force
    execute if score $team ui_temp matches 1 run particle block light_blue_concrete ^0.6 ^ ^-0.2 0 0 0 0 1 force
    execute if score $team ui_temp matches 1 run particle block light_blue_concrete ^0.3 ^ ^-0.1 0 0 0 0 1 force
    execute if score $team ui_temp matches 1 run particle block light_blue_concrete ^0.0 ^ ^ 0 0 0 0 1 force
    execute if score $team ui_temp matches 1 run particle block light_blue_concrete ^-0.3 ^ ^-0.1 0 0 0 0 1 force
    execute if score $team ui_temp matches 1 run particle block light_blue_concrete ^-0.6 ^ ^-0.2 0 0 0 0 1 force
    execute if score $team ui_temp matches 1 run particle block light_blue_concrete ^-0.9 ^ ^-0.5 0 0 0 0 1 force
    execute if score $team ui_temp matches 1 run particle block light_blue_concrete ^-1.2 ^ ^-1 0 0 0 0 1 force
    execute if score $team ui_temp matches 1 store result score $paint ui_temp run fill ~-0.6 ~ ~-0.6 ~0.6 ~-2 ~0.6 light_blue_wool replace #ui:wools
    execute if score $team ui_temp matches 2 run particle dust 1 0.5 1 1.2 ~ ~-0.3 ~ 0 0.45 0 0 1 force
    execute if score $team ui_temp matches 2 run particle block pink_concrete ^1.2 ^ ^-1 0 0 0 0 1 force
    execute if score $team ui_temp matches 2 run particle block pink_concrete ^0.9 ^ ^-0.5 0 0 0 0 1 force
    execute if score $team ui_temp matches 2 run particle block pink_concrete ^0.6 ^ ^-0.2 0 0 0 0 1 force
    execute if score $team ui_temp matches 2 run particle block pink_concrete ^0.3 ^ ^-0.1 0 0 0 0 1 force
    execute if score $team ui_temp matches 2 run particle block pink_concrete ^0.0 ^ ^ 0 0 0 0 1 force
    execute if score $team ui_temp matches 2 run particle block pink_concrete ^-0.3 ^ ^-0.1 0 0 0 0 1 force
    execute if score $team ui_temp matches 2 run particle block pink_concrete ^-0.6 ^ ^-0.2 0 0 0 0 1 force
    execute if score $team ui_temp matches 2 run particle block pink_concrete ^-0.9 ^ ^-0.5 0 0 0 0 1 force
    execute if score $team ui_temp matches 2 run particle block pink_concrete ^-1.2 ^ ^-1 0 0 0 0 1 force
    execute if score $team ui_temp matches 2 store result score $paint ui_temp run fill ~-0.6 ~ ~-0.6 ~0.6 ~-2 ~0.6 pink_wool replace #ui:wools
