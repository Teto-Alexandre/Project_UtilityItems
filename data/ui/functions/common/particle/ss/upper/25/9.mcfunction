#
execute if score $is ui_temp matches 1 at @s positioned ^ ^ ^ run function ui:common/particle/ss/upper/25/ring/base
execute if score $is ui_temp matches 1 as @e[tag=ui_temp_particle_10026_ring] at @s facing entity @e[tag=ui_temp_particle_10026_center,limit=1] feet positioned ^ ^ ^2.2 run function ui:common/particle/ss/upper/25/9_2
kill @e[tag=ui_temp_particle_10026_ring]
kill @e[tag=ui_temp_particle_10026_center]

#
#execute if score $is ui_temp >= @s ui_is2 run kill @s
execute if score $is ui_temp matches 1.. run kill @s