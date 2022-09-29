# これです
    tag @s add ui_temp_this
# 移動維持
    execute at @s run teleport @s ~ ~ ~ ~ ~5
    scoreboard players set @s ui_bcp 0
# 当たり判定拡張
    execute positioned ~ ~-0.9 ~ as @e[distance=..1.5,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s as @e[tag=ui_temp_this] run function ui:tmw/237/projectile/hit
# 見た目
    execute if score $team ui_temp matches 1 run function ui:tmw/237/projectile/move/104/1
    execute if score $team ui_temp matches 2 run function ui:tmw/237/projectile/move/104/2
    execute if score $team ui_temp matches 3 run function ui:tmw/237/projectile/move/104/3
    execute if score $team ui_temp matches 4 run function ui:tmw/237/projectile/move/104/4
# 時間カウント
    scoreboard players add @s ui_is 5
    execute if score @s ui_is matches ..100 run scoreboard players set @s ui_hpart 204
    execute if score @s ui_is matches 101..150 run scoreboard players set @s ui_hpart 205
    execute if score @s ui_is matches 151..200 run scoreboard players set @s ui_hpart 206
    execute if score @s ui_is matches 201..250 run scoreboard players set @s ui_hpart 207
    execute if score @s ui_is matches 251..300 run scoreboard players set @s ui_hpart 208
    execute if score @s ui_is matches 301..350 run scoreboard players set @s ui_hpart 209
    execute if score @s ui_is matches 351..400 run scoreboard players set @s ui_hpart 210
# 壁接触時
    execute store result score $rotation_x ui_temp run data get entity @s Rotation.[0]
    scoreboard players set $success ui_temp 0
    execute at @s[tag=!tmw237_reflected] unless block ~ ~0.5 ~ #ui:nocol store result entity @s Rotation.[1] float -1 store success score $success ui_temp run data get entity @s Rotation.[1]
    execute at @s[tag=!tmw237_reflected] unless block ~ ~-0.5 ~ #ui:nocol run teleport @s ~ ~ ~ ~ ~10
    execute at @s[tag=!tmw237_reflected] unless block ~ ~-0.5 ~ #ui:nocol store result entity @s Rotation.[1] float -1 store success score $success ui_temp run data get entity @s Rotation.[1]
    execute at @s[tag=!tmw237_reflected] unless block ~0.5 ~ ~ #ui:nocol store result entity @s Rotation.[0] float -1 store success score $success ui_temp run scoreboard players get $rotation_x ui_temp
    execute at @s[tag=!tmw237_reflected] unless block ~-0.5 ~ ~ #ui:nocol store result entity @s Rotation.[0] float -1 store success score $success ui_temp run scoreboard players get $rotation_x ui_temp
    execute at @s[tag=!tmw237_reflected] unless block ~ ~ ~0.5 #ui:nocol store result score $rotation_x ui_temp run data get entity @s Rotation.[0] -1
    execute at @s[tag=!tmw237_reflected] unless block ~ ~ ~0.5 #ui:nocol store result entity @s Rotation.[0] float 1 store success score $success ui_temp run scoreboard players operation $rotation_x ui_temp -= #180 ui_num
    execute at @s[tag=!tmw237_reflected] unless block ~ ~ ~-0.5 #ui:nocol store result score $rotation_x ui_temp run data get entity @s Rotation.[0] -1
    execute at @s[tag=!tmw237_reflected] unless block ~ ~ ~-0.5 #ui:nocol store result entity @s Rotation.[0] float 1 store success score $success ui_temp run scoreboard players operation $rotation_x ui_temp -= #180 ui_num
    tag @s[tag=tmw237_reflected] remove tmw237_reflected
    execute if score $success ui_temp matches 1 run tag @s add tmw237_reflected
# 消す
    execute if entity @s[tag=tmw_237_proj_del] run function ui:tmw/237/projectile/kill
    execute if score @s ui_is matches 400.. run function ui:tmw/237/projectile/kill
#
    tag @s remove ui_temp_this