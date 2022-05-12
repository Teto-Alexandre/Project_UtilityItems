# グレネード
    function ui:template/sphere_particle/4
    scoreboard players set $temp ui_temp 0
    scoreboard players set @s ui_bdt 3
    scoreboard players set @s ui_dmg 120
    execute at @e[distance=..4,tag=!ui_temp_team,type=!#ui:unhurtable,tag=!ui_unhurtable] run function ui:common/projectile/hit.marker
    execute if score $color ui_temp matches 1 at @e[tag=ui_temp_particle] run particle dust 0.5 1 1 1 ~ ~ ~ 0 0 0 0 1 force
    execute if score $color ui_temp matches 1 at @e[tag=ui_temp_particle] run particle block light_blue_concrete ~ ~ ~ 0 0 0 0 1 force
    execute if score $color ui_temp matches 1 at @e[tag=ui_temp_particle] if block ~ ~ ~ #ui:wools unless block ~ ~ ~ light_blue_wool run scoreboard players add $temp ui_temp 1
    execute if score $color ui_temp matches 1 at @e[tag=ui_temp_particle] run fill ~ ~ ~ ~ ~ ~ light_blue_wool replace #ui:wools
    execute if score $color ui_temp matches 2 at @e[tag=ui_temp_particle] run particle dust 1 0.5 1 1 ~ ~ ~ 0 0 0 0 1 force
    execute if score $color ui_temp matches 2 at @e[tag=ui_temp_particle] run particle block pink_concrete ~ ~ ~ 0 0 0 0 1 force
    execute if score $color ui_temp matches 2 at @e[tag=ui_temp_particle] if block ~ ~ ~ #ui:wools unless block ~ ~ ~ pink_wool run scoreboard players add $temp ui_temp 1
    execute if score $color ui_temp matches 2 at @e[tag=ui_temp_particle] run fill ~ ~ ~ ~ ~ ~ pink_wool replace #ui:wools
    execute as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_paint += $temp ui_temp
    kill @e[tag=ui_temp_particle]
    kill @s