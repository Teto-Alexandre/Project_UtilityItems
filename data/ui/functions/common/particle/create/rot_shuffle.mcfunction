scoreboard players operation $rand ui_temp = $rand.rot ui_temp
summon marker ^ ^ ^1 {Tags:["ui_common_particle_target"]}
execute as @e[tag=ui_common_particle_target] run function ui:common/particle/create/square_shuffle
execute facing entity @e[tag=ui_common_particle_target] feet run teleport @s ~ ~ ~ ~ ~
kill @e[tag=ui_common_particle_target]
