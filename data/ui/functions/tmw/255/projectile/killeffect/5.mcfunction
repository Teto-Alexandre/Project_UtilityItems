#見た目
    data modify storage ui:temp Name set value '{"text":"爆風","color":"gray"}'
    function ui:template/sphere_particle/2.5
    scoreboard players set $damage_type ui_temp 3
    scoreboard players set $damage ui_temp 30
    execute at @e[distance=..3,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/255/projectile/hit.marker
    function ui:tmw/255/misc/particle_paint
    kill @e[tag=ui_temp_particle]
    playsound entity.firework_rocket.blast player @a ~ ~ ~ 1 0.65 0
