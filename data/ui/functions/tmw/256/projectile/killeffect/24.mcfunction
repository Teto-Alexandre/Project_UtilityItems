#見た目
    data modify storage ui:temp Name set value '{"text":"大爆風","color":"gold"}'
    function ui:template/sphere_particle/12
    scoreboard players set $damage_type ui_temp 3
    scoreboard players set $damage ui_temp 60
    execute at @e[distance=8.5..12.5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/256/projectile/hit.marker
    scoreboard players set $damage ui_temp 160
    execute at @e[distance=..8.5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/256/projectile/hit.marker
    function ui:tmw/256/misc/particle_paint
    kill @e[tag=ui_temp_particle]
    playsound entity.firework_rocket.large_blast player @a ~ ~ ~ 2 0.75 0