# タンサンボム

# 常時実行
    scoreboard players add @s ui_is 1
    execute if score @s ui_is2 matches 2.. run tag @s add ui_256_sub_explode

# 反射
    execute store result score $rotation_x ui_temp run data get entity @s Rotation.[0]
    scoreboard players set $success ui_temp 0
    execute at @s[tag=!tmw256_reflected] unless block ~0.5 ~0.5 ~ #ui:nocol store result entity @s Rotation.[0] float -1 store success score $success ui_temp run scoreboard players get $rotation_x ui_temp
    execute at @s[tag=!tmw256_reflected] unless block ~-0.5 ~0.5 ~ #ui:nocol store result entity @s Rotation.[0] float -1 store success score $success ui_temp run scoreboard players get $rotation_x ui_temp
    execute at @s[tag=!tmw256_reflected] unless block ~ ~0.5 ~0.5 #ui:nocol store result score $rotation_x ui_temp run data get entity @s Rotation.[0] -1
    execute at @s[tag=!tmw256_reflected] unless block ~ ~0.5 ~0.5 #ui:nocol store result entity @s Rotation.[0] float 1 store success score $success ui_temp run scoreboard players operation $rotation_x ui_temp -= #180 ui_num
    execute at @s[tag=!tmw256_reflected] unless block ~ ~0.5 ~-0.5 #ui:nocol store result score $rotation_x ui_temp run data get entity @s Rotation.[0] -1
    execute at @s[tag=!tmw256_reflected] unless block ~ ~0.5 ~-0.5 #ui:nocol store result entity @s Rotation.[0] float 1 store success score $success ui_temp run scoreboard players operation $rotation_x ui_temp -= #180 ui_num
    tag @s[tag=tmw256_reflected] remove tmw256_reflected
    execute if score $success ui_temp matches 1 run tag @s add tmw256_reflected

# 加速
    execute if score @s ui_is matches 10.. if entity @s[nbt={OnGround:1b}] run function ui:tmw/256/sub/explosive/115/bounce

# 処理終了
    execute if entity @s[tag=ui_256_sub_explode] run function ui:tmw/256/sub/explosive/115/end