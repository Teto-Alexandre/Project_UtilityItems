#
execute if score $is ui_temp matches 1 at @s positioned ^ ^ ^ run function ui:common/particle/ss/upper/25/ring/base
execute if score $is ui_temp matches 2 at @s positioned ^ ^ ^ run function ui:common/particle/ss/upper/25/ring/base
execute if score $is ui_temp matches 3 at @s positioned ^ ^ ^ run function ui:common/particle/ss/upper/25/ring/base
execute if score $is ui_temp matches 4 at @s positioned ^ ^ ^ run function ui:common/particle/ss/upper/25/ring/base
execute if score $is ui_temp matches 5 at @s positioned ^ ^ ^ run function ui:common/particle/ss/upper/25/ring/base
execute if score $is ui_temp matches 6 at @s positioned ^ ^ ^ run function ui:common/particle/ss/upper/25/ring/base
execute if score $is ui_temp matches 7 at @s positioned ^ ^ ^ run function ui:common/particle/ss/upper/25/ring/base
execute if score $is ui_temp matches 8 at @s positioned ^ ^ ^ run function ui:common/particle/ss/upper/25/ring/base
execute if score $is ui_temp matches 1 as @e[tag=ui_temp_particle_10026_ring] at @s facing entity @e[tag=ui_temp_particle_10026_center,limit=1] feet positioned ^ ^ ^1.5 run particle minecraft:dust 1 0.9 0 0.3 ~ ~ ~ 0 0 0 0 1
execute if score $is ui_temp matches 2 as @e[tag=ui_temp_particle_10026_ring] at @s facing entity @e[tag=ui_temp_particle_10026_center,limit=1] feet positioned ^ ^ ^1.7 run particle minecraft:dust 1 0.9 0 0.3 ~ ~ ~ 0 0 0 0 1
execute if score $is ui_temp matches 3 as @e[tag=ui_temp_particle_10026_ring] at @s facing entity @e[tag=ui_temp_particle_10026_center,limit=1] feet positioned ^ ^ ^1.9 run particle minecraft:dust 1 0.9 0 0.3 ~ ~ ~ 0 0 0 0 1
execute if score $is ui_temp matches 4 as @e[tag=ui_temp_particle_10026_ring] at @s facing entity @e[tag=ui_temp_particle_10026_center,limit=1] feet positioned ^ ^ ^2.1 run particle minecraft:dust 1 0.9 0 0.3 ~ ~ ~ 0 0 0 0 1
execute if score $is ui_temp matches 5 as @e[tag=ui_temp_particle_10026_ring] at @s facing entity @e[tag=ui_temp_particle_10026_center,limit=1] feet positioned ^ ^ ^2.3 run particle minecraft:dust 1 0.9 0 0.3 ~ ~ ~ 0 0 0 0 1
execute if score $is ui_temp matches 6 as @e[tag=ui_temp_particle_10026_ring] at @s facing entity @e[tag=ui_temp_particle_10026_center,limit=1] feet positioned ^ ^ ^2.5 run particle minecraft:dust 1 0.9 0 0.3 ~ ~ ~ 0 0 0 0 1
execute if score $is ui_temp matches 7 as @e[tag=ui_temp_particle_10026_ring] at @s facing entity @e[tag=ui_temp_particle_10026_center,limit=1] feet positioned ^ ^ ^2.7 run particle minecraft:dust 1 0.9 0 0.3 ~ ~ ~ 0 0 0 0 1
execute if score $is ui_temp matches 8 as @e[tag=ui_temp_particle_10026_ring] at @s facing entity @e[tag=ui_temp_particle_10026_center,limit=1] feet positioned ^ ^ ^2.9 run particle minecraft:dust 1 0.9 0 0.3 ~ ~ ~ 0 0 0 0 1
kill @e[tag=ui_temp_particle_10026_ring]
kill @e[tag=ui_temp_particle_10026_center]

#
#execute if score $is ui_temp >= @s ui_is2 run kill @s
execute if score $is ui_temp matches 8.. run kill @s