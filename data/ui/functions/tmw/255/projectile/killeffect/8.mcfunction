#見た目
    data modify storage ui:temp Name set value '{"text":"爆風","color":"gray"}'
    function ui:template/sphere_particle/4
    scoreboard players set $damage_type ui_temp 3
    scoreboard players set $damage ui_temp 30
    execute at @e[distance=3..4.5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/255/projectile/hit.marker
    scoreboard players set $damage ui_temp 60
    execute at @e[distance=..3,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/255/projectile/hit.marker
    function ui:tmw/255/misc/particle_paint
    kill @e[tag=ui_temp_particle]
    playsound entity.firework_rocket.large_blast player @a ~ ~ ~ 1.6 1 0