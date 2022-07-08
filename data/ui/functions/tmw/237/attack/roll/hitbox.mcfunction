# 当たり判定発生
    scoreboard players set $paint ui_temp 0
    execute at @e[distance=..1.2,tag=!ui_temp_team,predicate=ui:load_unhurtable,tag=!ui_temp_attacked] run function ui:tmw/237/attack/roll/hit
    execute if score $team ui_temp matches 1 store result score $paint ui_temp run fill ~ ~ ~ ~ ~-2 ~ light_blue_wool replace #ui:wools
    execute if score $team ui_temp matches 2 store result score $paint ui_temp run fill ~ ~ ~ ~ ~-2 ~ pink_wool replace #ui:wools
    execute if score $team ui_temp matches 3 store result score $paint ui_temp run fill ~ ~ ~ ~ ~-2 ~ yellow_wool replace #ui:wools
    execute if score $team ui_temp matches 4 store result score $paint ui_temp run fill ~ ~ ~ ~ ~-2 ~ lime_wool replace #ui:wools
    execute as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_paint += $paint ui_temp

# 見た目
    execute if score $team ui_temp matches 1 run particle dust 0.5 1 1 1 ~ ~0.2 ~ 0 0 0 0 1 force
    execute if score $team ui_temp matches 1 run particle block light_blue_concrete ~ ~0.2 ~ 0 0 0 0 1 force
    execute if score $team ui_temp matches 2 run particle dust 1 0.5 1 1 ~ ~0.2 ~ 0 0 0 0 1 force
    execute if score $team ui_temp matches 2 run particle block pink_concrete ~ ~0.2 ~ 0 0 0 0 1 force
    execute if score $team ui_temp matches 3 run particle dust 1 1 0.5 1 ~ ~0.2 ~ 0 0 0 0 1 force
    execute if score $team ui_temp matches 3 run particle block yellow_concrete ~ ~0.2 ~ 0 0 0 0 1 force
    execute if score $team ui_temp matches 4 run particle dust 0.5 1 0.5 1 ~ ~0.2 ~ 0 0 0 0 1 force
    execute if score $team ui_temp matches 4 run particle block lime_concrete ~ ~0.2 ~ 0 0 0 0 1 force

# 右側へ移動.lp
    scoreboard players remove $width ui_temp 1
    execute if score $width ui_temp matches 1.. positioned ^ ^ ^0.8 run function ui:tmw/237/attack/roll/hitbox