#
execute store result score $burst ui_temp run data get storage ui:gun temp.bc
#tellraw @a {"score":{"name":"$burst","objective":"ui_temp"},"color":"gold"}
#execute at @s run playsound entity.experience_orb.pickup player @a ~ ~ ~ 0.5 1.8 0