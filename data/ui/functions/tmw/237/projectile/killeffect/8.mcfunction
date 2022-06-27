#見た目
    data modify storage ui:temp Name set value '{"text":"爆風","color":"gray"}'
    function ui:template/sphere_particle/4
    scoreboard players set @s ui_bdt 3
    scoreboard players set @s ui_dmg 30
    execute at @e[distance=3..4.5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    scoreboard players set @s ui_dmg 60
    execute at @e[distance=..3,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker

    execute if score $team ui_temp matches 1 at @e[tag=ui_temp_particle] run particle dust 0.5 1 1 1 ~ ~ ~ 0 0 0 0 1 force
    execute if score $team ui_temp matches 1 at @e[tag=ui_temp_particle] run particle block light_blue_concrete ~ ~ ~ 0 0 0 0 1 force
    execute if score $team ui_temp matches 1 at @e[tag=ui_temp_particle] if block ~ ~ ~ #ui:wools unless block ~ ~ ~ light_blue_wool run scoreboard players add $paint ui_temp 1
    execute if score $team ui_temp matches 1 at @e[tag=ui_temp_particle] run fill ~ ~ ~ ~ ~ ~ light_blue_wool replace #ui:wools
    execute if score $team ui_temp matches 2 at @e[tag=ui_temp_particle] run particle dust 1 0.5 1 1 ~ ~ ~ 0 0 0 0 1 force
    execute if score $team ui_temp matches 2 at @e[tag=ui_temp_particle] run particle block pink_concrete ~ ~ ~ 0 0 0 0 1 force
    execute if score $team ui_temp matches 2 at @e[tag=ui_temp_particle] if block ~ ~ ~ #ui:wools unless block ~ ~ ~ pink_wool run scoreboard players add $paint ui_temp 1
    execute if score $team ui_temp matches 2 at @e[tag=ui_temp_particle] run fill ~ ~ ~ ~ ~ ~ pink_wool replace #ui:wools

    kill @e[tag=ui_temp_particle]