# これです
    tag @s add ui_temp_this
# 移動維持
    execute at @s run teleport @s ~ ~ ~ ~ ~5
    scoreboard players set @s ui_bcp 0
# 見た目
    execute if score $team ui_temp matches 1 run function ui:tmw/237/projectile/move/13/1
    execute if score $team ui_temp matches 2 run function ui:tmw/237/projectile/move/13/2
    execute if score $team ui_temp matches 3 run function ui:tmw/237/projectile/move/13/3
    execute if score $team ui_temp matches 4 run function ui:tmw/237/projectile/move/13/4
# 時間カウント
    scoreboard players add @s ui_is 5
# 壁接触時
    execute store result score $rotation_x ui_temp run data get entity @s Rotation.[0]
    scoreboard players set $success ui_temp 0
    execute at @s[tag=!tmw237_reflected] unless block ~ ~0.5 ~ #ui:nocol store result entity @s Rotation.[1] float -0.7 store success score $success ui_temp run data get entity @s Rotation.[1]
    execute at @s[tag=!tmw237_reflected] unless block ~ ~-0.5 ~ #ui:nocol run teleport @s ~ ~ ~ ~ ~1
    execute at @s[tag=!tmw237_reflected] unless block ~ ~-0.5 ~ #ui:nocol store result entity @s Rotation.[1] float -0.7 store success score $success ui_temp run data get entity @s Rotation.[1]
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
    execute if score @s ui_is matches 300.. run function ui:tmw/237/projectile/kill
#
    tag @s remove ui_temp_this