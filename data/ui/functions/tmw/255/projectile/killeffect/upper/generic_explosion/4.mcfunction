#見た目
    data modify storage ui:temp Name set value '{"text":"爆風","color":"gray"}'
    function ui:template/sphere_particle/2
    scoreboard players set $damage_type ui_temp 3
    scoreboard players set $damage_max ui_temp 70
    execute at @e[distance=..2.5,predicate=ui:load_unhurtable] run function ui:tmw/255/projectile/killeffect/hit/distant_hit
    function ui:tmw/255/misc/particle_break
    kill @e[tag=ui_temp_particle]
    playsound entity.generic.explode player @a ~ ~ ~ 1 1.8 0
    particle explosion ~ ~ ~ 0.5 0.5 0.5 0 4 force
