function ui:template/circle_particle_eyef/20
kill @e[distance=..19,tag=ui_temp_particle]
execute at @e[tag=ui_temp_particle] run particle dust 1 1 1 10 ~ ~ ~ 0 0 0 0 1 force
kill @e[tag=ui_temp_particle]