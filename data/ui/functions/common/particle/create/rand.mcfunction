# 必須じゃないやつ
    execute store result score $rand.pos ui_temp run data get storage ui:common input.Rand.Pos
    execute store result score $rand.rot ui_temp run data get storage ui:common input.Rand.Rot
    execute store result score $rand.x ui_temp run data get storage ui:common input.Rand.X
    execute store result score $rand.y ui_temp run data get storage ui:common input.Rand.Y
    execute store result score $rand.z ui_temp run data get storage ui:common input.Rand.Z

#
    execute if score $rand.pos ui_temp matches 1.. run function ui:common/particle/create/pos_shuffle

#
    execute if score $rand.x ui_temp matches 1.. as @e[tag=ui_common_particle_unpower] run function ui:common/particle/create/x_spread
    execute if score $rand.y ui_temp matches 1.. as @e[tag=ui_common_particle_unpower] run function ui:common/particle/create/y_spread
    execute if score $rand.z ui_temp matches 1.. as @e[tag=ui_common_particle_unpower] run function ui:common/particle/create/z_spread

#
    execute if data storage ui:common input.Rand.RotX as @e[tag=ui_common_particle_unpower] at @s run function ui:common/particle/create/rotx
    execute if data storage ui:common input.Rand.RotY as @e[tag=ui_common_particle_unpower] at @s run function ui:common/particle/create/roty
    execute if score $rand.rot ui_temp matches 1.. as @e[tag=ui_common_particle_unpower] at @s run function ui:common/particle/create/rot_shuffle