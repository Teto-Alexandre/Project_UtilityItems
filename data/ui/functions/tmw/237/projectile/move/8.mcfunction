#これです
    tag @s add ui_temp_this
#座標調整
    teleport @s ^ ^ ^8
#当たり判定拡張
    execute positioned ^ ^ ^16 positioned ~ ~-0.9 ~ as @e[distance=..3.5,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!ui_temp_attacked_free] at @s as @e[tag=ui_temp_this] run function ui:tmw/237/projectile/hit_free
    execute positioned ^ ^ ^12 positioned ~ ~-0.9 ~ as @e[distance=..3.5,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!ui_temp_attacked_free] at @s as @e[tag=ui_temp_this] run function ui:tmw/237/projectile/hit_free
#見た目
    scoreboard players operation $temp ui_temp = $world ui_tc
    scoreboard players operation $temp ui_temp %= #2 ui_num
    execute if score $team ui_temp matches 1 if score $temp ui_temp matches 0 at @s run function ui:tmw/237/projectile/move/8/1.0
    execute if score $team ui_temp matches 1 if score $temp ui_temp matches 1 at @s run function ui:tmw/237/projectile/move/8/1.1
    execute if score $team ui_temp matches 2 if score $temp ui_temp matches 0 at @s run function ui:tmw/237/projectile/move/8/2.0
    execute if score $team ui_temp matches 2 if score $temp ui_temp matches 1 at @s run function ui:tmw/237/projectile/move/8/2.1
    execute if score $team ui_temp matches 3 if score $temp ui_temp matches 0 at @s run function ui:tmw/237/projectile/move/8/3.0
    execute if score $team ui_temp matches 3 if score $temp ui_temp matches 1 at @s run function ui:tmw/237/projectile/move/8/3.1
    execute if score $team ui_temp matches 4 if score $temp ui_temp matches 0 at @s run function ui:tmw/237/projectile/move/8/4.0
    execute if score $team ui_temp matches 4 if score $temp ui_temp matches 1 at @s run function ui:tmw/237/projectile/move/8/4.1
#
    tag @s remove ui_temp_this