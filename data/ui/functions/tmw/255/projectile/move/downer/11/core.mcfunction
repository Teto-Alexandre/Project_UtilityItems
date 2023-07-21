##軌道上の破壊

# 見た目
    #scoreboard players set $damage_type ui_temp 3
    #scoreboard players set $damage ui_temp 30
    #execute at @e[distance=..2.5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    scoreboard players set $mod ui_calc1 10
    function ui:common/rand

    particle dust 1 1 1 10 ~ ~ ~ 0 0 0 0 1 force
    execute if score $rand ui_calc1 matches ..6 positioned ^ ^ ^1 run function ui:template/circle_particle_eyef/3
    execute if score $rand ui_calc1 matches 7 positioned ^ ^ ^1 run function ui:template/circle_particle_eyef/4
    execute if score $rand ui_calc1 matches 8 positioned ^ ^ ^1 run function ui:template/circle_particle_eyef/7
    execute if score $rand ui_calc1 matches 9 positioned ^ ^ ^1 run function ui:template/circle_particle_eyef/10
    
    execute as @e[distance=..7,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:tmw/255/projectile/move/downer/11/damage

    execute at @e[tag=ui_temp_particle] unless block ~-1 ~ ~ #ui:nobreak run fill ~-1 ~ ~ ~-1 ~ ~ air hollow
    execute at @e[tag=ui_temp_particle] unless block ~ ~-1 ~ #ui:nobreak run fill ~ ~-1 ~ ~ ~-1 ~ air hollow
    execute at @e[tag=ui_temp_particle] unless block ~ ~ ~-1 #ui:nobreak run fill ~ ~ ~-1 ~ ~ ~-1 air hollow
    execute at @e[tag=ui_temp_particle] unless block ~1 ~ ~ #ui:nobreak run fill ~1 ~ ~ ~1 ~ ~ air hollow
    execute at @e[tag=ui_temp_particle] unless block ~ ~1 ~ #ui:nobreak run fill ~ ~1 ~ ~ ~1 ~ air hollow
    execute at @e[tag=ui_temp_particle] unless block ~ ~ ~1 #ui:nobreak run fill ~ ~ ~1 ~ ~ ~1 air hollow
    execute at @e[tag=ui_temp_particle] unless block ~ ~ ~ #ui:nobreak run fill ~ ~ ~ ~ ~ ~ air hollow
    execute if score $rand ui_calc1 matches ..6 positioned ^ ^ ^1 run kill @e[distance=..4,tag=ui_temp_particle]
    execute if score $rand ui_calc1 matches 7 positioned ^ ^ ^1 run kill @e[distance=..3,tag=ui_temp_particle]
    execute if score $rand ui_calc1 matches 8 positioned ^ ^ ^1 run kill @e[distance=..6,tag=ui_temp_particle]
    execute if score $rand ui_calc1 matches 9 positioned ^ ^ ^1 run kill @e[distance=..9,tag=ui_temp_particle]
    execute if score $rand ui_calc1 matches 7..9 if predicate ui:percentage/75 positioned ^ ^ ^1 run kill @e[distance=..11,tag=ui_temp_particle]
    execute at @e[tag=ui_temp_particle] run particle dust 1 1 1 10 ~ ~ ~ 0 0 0 0 1 force
    kill @e[tag=ui_temp_particle]
    
    execute if predicate ui:percentage/1 positioned ^ ^ ^1 run function ui:tmw/255/projectile/move/downer/11/wide

# 消す
    execute if entity @s[tag=tmw_255_proj_del] run function ui:tmw/255/projectile/kill
