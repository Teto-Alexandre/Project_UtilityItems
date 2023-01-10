#
    execute if score $is ui_temp matches 1 run summon lightning_bolt ~ ~ ~
    execute if score $is ui_temp matches 2 run summon lightning_bolt ~2 ~ ~
    execute if score $is ui_temp matches 3 run summon lightning_bolt ~4 ~ ~
    execute if score $is ui_temp matches 2 run summon lightning_bolt ~-2 ~ ~
    execute if score $is ui_temp matches 3 run summon lightning_bolt ~-4 ~ ~
    execute if score $is ui_temp matches 2 run summon lightning_bolt ~ ~ ~2
    execute if score $is ui_temp matches 3 run summon lightning_bolt ~ ~ ~4
    execute if score $is ui_temp matches 2 run summon lightning_bolt ~ ~ ~-2
    execute if score $is ui_temp matches 3 run summon lightning_bolt ~ ~ ~-4

#
    execute if score $is ui_temp matches 1 run execute as @e[distance=5..7,predicate=ui:load_unhurtable] at @s run function ui:common/particle/ss/upper/13/1
    execute if score $is ui_temp matches 1 run execute as @e[distance=..5,predicate=ui:load_unhurtable] at @s run function ui:common/particle/ss/upper/13/2

#Particles Generated with: Cloud Wolf's Particle Grapher
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~0.000 ~0.500 ~5.000 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~0.436 ~0.500 ~4.981 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~0.868 ~0.500 ~4.924 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~1.294 ~0.500 ~4.830 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~1.710 ~0.500 ~4.698 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~2.113 ~0.500 ~4.532 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~2.500 ~0.500 ~4.330 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~2.868 ~0.500 ~4.096 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~3.214 ~0.500 ~3.830 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~3.535 ~0.500 ~3.536 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~3.830 ~0.500 ~3.214 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~4.096 ~0.500 ~2.868 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~4.330 ~0.500 ~2.500 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~4.531 ~0.500 ~2.113 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~4.698 ~0.500 ~1.710 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~4.830 ~0.500 ~1.294 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~4.924 ~0.500 ~0.868 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~4.981 ~0.500 ~0.436 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~5.000 ~0.500 ~0.000 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~4.981 ~0.500 ~-0.436 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~4.924 ~0.500 ~-0.868 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~4.830 ~0.500 ~-1.294 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~4.699 ~0.500 ~-1.710 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~4.532 ~0.500 ~-2.113 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~4.330 ~0.500 ~-2.500 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~4.096 ~0.500 ~-2.868 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~3.830 ~0.500 ~-3.214 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~3.536 ~0.500 ~-3.535 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~3.214 ~0.500 ~-3.830 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~2.868 ~0.500 ~-4.096 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~2.500 ~0.500 ~-4.330 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~2.113 ~0.500 ~-4.531 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~1.710 ~0.500 ~-4.698 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~1.295 ~0.500 ~-4.830 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~0.869 ~0.500 ~-4.924 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~0.436 ~0.500 ~-4.981 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~0.000 ~0.500 ~-5.000 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-0.435 ~0.500 ~-4.981 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-0.868 ~0.500 ~-4.924 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-1.294 ~0.500 ~-4.830 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-1.710 ~0.500 ~-4.699 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-2.113 ~0.500 ~-4.532 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-2.500 ~0.500 ~-4.330 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-2.867 ~0.500 ~-4.096 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-3.214 ~0.500 ~-3.831 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-3.535 ~0.500 ~-3.536 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-3.830 ~0.500 ~-3.214 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-4.095 ~0.500 ~-2.868 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-4.330 ~0.500 ~-2.501 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-4.531 ~0.500 ~-2.114 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-4.698 ~0.500 ~-1.711 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-4.829 ~0.500 ~-1.295 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-4.924 ~0.500 ~-0.869 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-4.981 ~0.500 ~-0.436 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-5.000 ~0.500 ~-0.001 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-4.981 ~0.500 ~0.435 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-4.924 ~0.500 ~0.868 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-4.830 ~0.500 ~1.293 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-4.699 ~0.500 ~1.709 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-4.532 ~0.500 ~2.112 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-4.331 ~0.500 ~2.499 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-4.096 ~0.500 ~2.867 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-3.831 ~0.500 ~3.213 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-3.536 ~0.500 ~3.535 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-3.215 ~0.500 ~3.830 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-2.869 ~0.500 ~4.095 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-2.501 ~0.500 ~4.330 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-2.114 ~0.500 ~4.531 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-1.711 ~0.500 ~4.698 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-1.295 ~0.500 ~4.829 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-0.869 ~0.500 ~4.924 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle dust 1.0 1.0 0.5 1.2 ~-0.437 ~0.500 ~4.981 0 0 0 0 1 force @a

#
execute if score $is ui_temp matches 2.. run kill @s