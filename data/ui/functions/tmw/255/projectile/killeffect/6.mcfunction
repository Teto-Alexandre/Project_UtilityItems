#見た目
    data modify storage ui:temp Name set value '{"text":"爆風","color":"gray"}'
    function ui:template/sphere_particle/3
    scoreboard players set $damage_type ui_temp 3
    scoreboard players set $damage_max ui_temp 90
    execute at @e[distance=..3.5,predicate=ui:load_unhurtable] run function ui:tmw/255/projectile/killeffect/hit/distant_hit
    function ui:tmw/255/misc/particle_break
    kill @e[tag=ui_temp_particle]
    playsound entity.generic.explode player @a ~ ~ ~ 1.4 1.4 0
    particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
