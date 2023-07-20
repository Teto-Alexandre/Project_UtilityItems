function ui:template/sphere_particle/10
execute at @e[tag=ui_temp_particle] run fill ~ ~ ~ ~ ~ ~ air hollow
kill @e[distance=..9,tag=ui_temp_particle]
execute at @e[tag=ui_temp_particle] run particle dust 1 1 1 10 ~ ~ ~ 0 0 0 0 1 force
kill @e[tag=ui_temp_particle]
    
execute as @e[distance=..18,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:tmw/255/projectile/move/downer/11/damage2

playsound entity.generic.explode player @a ~ ~ ~ 5 0.5 0
particle explosion_emitter ~ ~ ~ 5 5 5 0 20 force
particle dust 1 1 1 10 ~ ~ ~ 15 15 15 0 250 force
particle end_rod ~ ~ ~ 0 0 0 1 300 force
particle end_rod ~ ~ ~ 0 0 0 3 300 force
execute positioned ^ ^ ^5 run function ui:tmw/255/projectile/move/downer/11/wide
execute positioned ^ ^ ^12 run function ui:tmw/255/projectile/move/downer/11/med
execute positioned ^ ^ ^19 run function ui:tmw/255/projectile/move/downer/11/short