#当たり判定拡張
    execute positioned ~ ~-0.9 ~ as @e[distance=..1.5,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!ui_temp_attacked_free] at @s as @e[tag=ui_temp_this] run function ui:tmw/237/projectile/hit_free
#見た目
    execute if score $team ui_temp matches 1 at @s run function ui:tmw/237/projectile/move/108/1
    execute if score $team ui_temp matches 2 at @s run function ui:tmw/237/projectile/move/108/2
    execute if score $team ui_temp matches 3 at @s run function ui:tmw/237/projectile/move/108/3
    execute if score $team ui_temp matches 4 at @s run function ui:tmw/237/projectile/move/108/4