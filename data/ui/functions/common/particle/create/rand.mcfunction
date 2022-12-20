# 必須じゃないやつ
    execute store result score $rand.pos ui_temp run data get storage ui:common input.Rand.Pos
    execute store result score $rand.rot ui_temp run data get storage ui:common input.Rand.Rot

#
    execute if score $rand.pos ui_temp matches 1.. run function ui:common/particle/create/pos_shuffle

#
    execute if score $rand.rot ui_temp matches 1.. as @e[tag=ui_common_particle_unpower] at @s run function ui:common/particle/create/rot_shuffle