#
    execute positioned ~ ~0 ~ rotated ~ 0 run function ui:common/particle/ss/downer/10014/1
    execute positioned ~ ~10 ~ rotated ~180 0 run function ui:common/particle/ss/downer/10014/1
    execute positioned ~ ~20 ~ rotated ~ 0 run function ui:common/particle/ss/downer/10014/1

#
    #say @e[predicate=ui:load_unhurtable,tag=!ui_temp_team]
    execute as @e[distance=4..7,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10014/damage
    execute as @e[distance=..4,predicate=ui:load_unhurtable,tag=!ui_temp_team] at @s run function ui:common/particle/ss/downer/10014/damage2

playsound entity.generic.explode player @a ~ ~ ~ 1 1 0
playsound item.totem.use player @a ~ ~ ~ 1 2 0
particle electric_spark ~ ~0.5 ~ 2.5 0 2.5 0 50 force @a
particle dust 1 1 1 1.1 ~ ~0.500 ~ 2.5 0 2.5 0 30 force @a
particle dust 1 1 0.5 1.1 ~ ~0.500 ~ 2.5 0 2.5 0 30 force @a
particle flash ~ ~0.5 ~ 0 0 0 0 1 force @a
particle flash ~ ~30.5 ~ 0 0 0 0 1 force @a

#Particles Generated with: Cloud Wolf's Particle Grapher
particle dust 1 1 0.5 1.4 ~0.000 ~0.500 ~4.000 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~0.349 ~0.500 ~3.985 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~0.695 ~0.500 ~3.939 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~1.035 ~0.500 ~3.864 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~1.368 ~0.500 ~3.759 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~1.690 ~0.500 ~3.625 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~2.000 ~0.500 ~3.464 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~2.294 ~0.500 ~3.277 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~2.571 ~0.500 ~3.064 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~2.828 ~0.500 ~2.828 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~3.064 ~0.500 ~2.571 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~3.277 ~0.500 ~2.294 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~3.464 ~0.500 ~2.000 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~3.625 ~0.500 ~1.691 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~3.759 ~0.500 ~1.368 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~3.864 ~0.500 ~1.035 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~3.939 ~0.500 ~0.695 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~3.985 ~0.500 ~0.349 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~4.000 ~0.500 ~0.000 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~3.985 ~0.500 ~-0.348 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~3.939 ~0.500 ~-0.694 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~3.864 ~0.500 ~-1.035 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~3.759 ~0.500 ~-1.368 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~3.625 ~0.500 ~-1.690 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~3.464 ~0.500 ~-2.000 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~3.277 ~0.500 ~-2.294 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~3.064 ~0.500 ~-2.571 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~2.829 ~0.500 ~-2.828 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~2.571 ~0.500 ~-3.064 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~2.295 ~0.500 ~-3.276 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~2.000 ~0.500 ~-3.464 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~1.691 ~0.500 ~-3.625 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~1.368 ~0.500 ~-3.759 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~1.036 ~0.500 ~-3.864 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~0.695 ~0.500 ~-3.939 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~0.349 ~0.500 ~-3.985 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~0.000 ~0.500 ~-4.000 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-0.348 ~0.500 ~-3.985 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-0.694 ~0.500 ~-3.939 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-1.035 ~0.500 ~-3.864 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-1.368 ~0.500 ~-3.759 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-1.690 ~0.500 ~-3.625 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-2.000 ~0.500 ~-3.464 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-2.294 ~0.500 ~-3.277 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-2.571 ~0.500 ~-3.064 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-2.828 ~0.500 ~-2.829 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-3.064 ~0.500 ~-2.572 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-3.276 ~0.500 ~-2.295 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-3.464 ~0.500 ~-2.000 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-3.625 ~0.500 ~-1.691 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-3.759 ~0.500 ~-1.369 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-3.864 ~0.500 ~-1.036 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-3.939 ~0.500 ~-0.695 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-3.985 ~0.500 ~-0.349 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-4.000 ~0.500 ~-0.001 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-3.985 ~0.500 ~0.348 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-3.939 ~0.500 ~0.694 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-3.864 ~0.500 ~1.035 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-3.759 ~0.500 ~1.368 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-3.625 ~0.500 ~1.690 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-3.464 ~0.500 ~1.999 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-3.277 ~0.500 ~2.294 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-3.065 ~0.500 ~2.571 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-2.829 ~0.500 ~2.828 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-2.572 ~0.500 ~3.064 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-2.295 ~0.500 ~3.276 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-2.001 ~0.500 ~3.464 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-1.691 ~0.500 ~3.625 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-1.369 ~0.500 ~3.759 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-1.036 ~0.500 ~3.864 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-0.695 ~0.500 ~3.939 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.4 ~-0.349 ~0.500 ~3.985 0 0 0 0 1 force @a

#Particles Generated with: Cloud Wolf's Particle Grapher
particle dust 1 1 0.5 1.2 ~0.000 ~0.500 ~7.000 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~0.366 ~0.500 ~6.990 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~0.732 ~0.500 ~6.962 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~1.095 ~0.500 ~6.914 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~1.455 ~0.500 ~6.847 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~1.812 ~0.500 ~6.761 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~2.163 ~0.500 ~6.657 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~2.509 ~0.500 ~6.535 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~2.847 ~0.500 ~6.395 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~3.178 ~0.500 ~6.237 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~3.500 ~0.500 ~6.062 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~3.812 ~0.500 ~5.871 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~4.114 ~0.500 ~5.663 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~4.405 ~0.500 ~5.440 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~4.684 ~0.500 ~5.202 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~4.950 ~0.500 ~4.950 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~5.202 ~0.500 ~4.684 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~5.440 ~0.500 ~4.405 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~5.663 ~0.500 ~4.115 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~5.871 ~0.500 ~3.813 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~6.062 ~0.500 ~3.500 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~6.237 ~0.500 ~3.178 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~6.395 ~0.500 ~2.847 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~6.535 ~0.500 ~2.509 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~6.657 ~0.500 ~2.163 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~6.761 ~0.500 ~1.812 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~6.847 ~0.500 ~1.456 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~6.914 ~0.500 ~1.095 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~6.962 ~0.500 ~0.732 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~6.990 ~0.500 ~0.367 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~7.000 ~0.500 ~0.000 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~6.990 ~0.500 ~-0.366 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~6.962 ~0.500 ~-0.731 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~6.914 ~0.500 ~-1.095 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~6.847 ~0.500 ~-1.455 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~6.762 ~0.500 ~-1.811 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~6.658 ~0.500 ~-2.163 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~6.535 ~0.500 ~-2.508 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~6.395 ~0.500 ~-2.847 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~6.237 ~0.500 ~-3.178 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~6.062 ~0.500 ~-3.500 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~5.871 ~0.500 ~-3.812 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~5.663 ~0.500 ~-4.114 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~5.440 ~0.500 ~-4.405 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~5.202 ~0.500 ~-4.684 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~4.950 ~0.500 ~-4.949 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~4.684 ~0.500 ~-5.202 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~4.406 ~0.500 ~-5.440 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~4.115 ~0.500 ~-5.663 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~3.813 ~0.500 ~-5.870 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~3.500 ~0.500 ~-6.062 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~3.178 ~0.500 ~-6.237 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~2.848 ~0.500 ~-6.395 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~2.509 ~0.500 ~-6.535 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~2.164 ~0.500 ~-6.657 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~1.812 ~0.500 ~-6.761 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~1.456 ~0.500 ~-6.847 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~1.096 ~0.500 ~-6.914 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~0.732 ~0.500 ~-6.962 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~0.367 ~0.500 ~-6.990 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~0.001 ~0.500 ~-7.000 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-0.366 ~0.500 ~-6.990 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-0.731 ~0.500 ~-6.962 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-1.094 ~0.500 ~-6.914 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-1.455 ~0.500 ~-6.847 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-1.811 ~0.500 ~-6.762 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-2.162 ~0.500 ~-6.658 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-2.508 ~0.500 ~-6.535 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-2.846 ~0.500 ~-6.395 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-3.177 ~0.500 ~-6.237 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-3.499 ~0.500 ~-6.063 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-3.812 ~0.500 ~-5.871 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-4.114 ~0.500 ~-5.664 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-4.405 ~0.500 ~-5.441 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-4.683 ~0.500 ~-5.203 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-4.949 ~0.500 ~-4.950 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-5.201 ~0.500 ~-4.685 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-5.439 ~0.500 ~-4.406 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-5.663 ~0.500 ~-4.115 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-5.870 ~0.500 ~-3.813 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-6.062 ~0.500 ~-3.501 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-6.237 ~0.500 ~-3.179 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-6.394 ~0.500 ~-2.848 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-6.535 ~0.500 ~-2.509 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-6.657 ~0.500 ~-2.164 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-6.761 ~0.500 ~-1.813 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-6.847 ~0.500 ~-1.456 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-6.914 ~0.500 ~-1.096 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-6.962 ~0.500 ~-0.733 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-6.990 ~0.500 ~-0.367 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-7.000 ~0.500 ~-0.001 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-6.990 ~0.500 ~0.365 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-6.962 ~0.500 ~0.731 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-6.914 ~0.500 ~1.094 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-6.847 ~0.500 ~1.454 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-6.762 ~0.500 ~1.811 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-6.658 ~0.500 ~2.162 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-6.535 ~0.500 ~2.508 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-6.395 ~0.500 ~2.846 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-6.238 ~0.500 ~3.177 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-6.063 ~0.500 ~3.499 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-5.871 ~0.500 ~3.812 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-5.664 ~0.500 ~4.114 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-5.441 ~0.500 ~4.404 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-5.203 ~0.500 ~4.683 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-4.951 ~0.500 ~4.949 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-4.685 ~0.500 ~5.201 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-4.406 ~0.500 ~5.439 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-4.115 ~0.500 ~5.662 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-3.813 ~0.500 ~5.870 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-3.501 ~0.500 ~6.062 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-3.179 ~0.500 ~6.237 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-2.848 ~0.500 ~6.394 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-2.510 ~0.500 ~6.535 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-2.164 ~0.500 ~6.657 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-1.813 ~0.500 ~6.761 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-1.457 ~0.500 ~6.847 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-1.096 ~0.500 ~6.914 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-0.733 ~0.500 ~6.962 0 0 0 0 1 force @a
particle dust 1 1 0.5 1.2 ~-0.368 ~0.500 ~6.990 0 0 0 0 1 force @a

#
execute if score $is ui_temp matches 0.. run kill @s