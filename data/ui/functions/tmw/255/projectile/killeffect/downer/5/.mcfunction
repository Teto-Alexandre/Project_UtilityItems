function ui:template/sphere_particle/10
execute at @e[tag=ui_temp_particle] run fillbiome ~ ~ ~ ~ ~ ~ ui:purple
kill @e[distance=..9,tag=ui_temp_particle]
execute at @e[tag=ui_temp_particle] run particle dust 1 0 1 10 ~ ~ ~ 0 0 0 0 1 force
kill @e[tag=ui_temp_particle]
    
execute as @e[distance=..10,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:tmw/255/projectile/killeffect/downer/5/damage

playsound entity.generic.explode player @a ~ ~ ~ 5 0.75 0
playsound entity.shulker.ambient player @a ~ ~ ~ 5 0.5 0
playsound item.honey_bottle.drink player @a ~ ~ ~ 5 0.5 0
particle dust 1 0 1 10 ~ ~ ~ 15 15 15 0 250 force
particle dragon_breath ~ ~ ~ 0 0 0 3 300 force
particle dragon_breath ~ ~ ~ 0 0 0 1 300 force