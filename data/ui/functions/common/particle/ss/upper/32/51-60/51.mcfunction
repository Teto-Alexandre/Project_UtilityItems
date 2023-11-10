#
execute rotated ~ 0 run teleport @s ~ ~ ~ ~0.5 ~

execute if score $is ui_temp matches 1 run playsound entity.generic.explode player @a ~ ~ ~ 1 0.5
execute if score $is ui_temp matches 1 run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a
execute if score $is ui_temp matches 1 run particle lava ~ ~ ~ 1 1 1 0 20 force @a
execute if score $is ui_temp matches 4 run playsound entity.generic.explode player @a ~ ~ ~ 1 0.5
execute if score $is ui_temp matches 4 run particle explosion_emitter ~ ~ ~ 3 0 3 0 2 force @a
execute if score $is ui_temp matches 4 run particle lava ~ ~ ~ 3 1 3 0 50 force @a
execute if score $is ui_temp matches 7 run playsound entity.generic.explode player @a ~ ~5 ~ 1 0.5
execute if score $is ui_temp matches 7 run particle explosion_emitter ~ ~5 ~ 2 0 2 0 1 force @a
execute if score $is ui_temp matches 7 run particle lava ~ ~5 ~ 2 1 2 0 20 force @a
execute if score $is ui_temp matches 10 run playsound entity.generic.explode player @a ~ ~ ~ 1 0.5
execute if score $is ui_temp matches 10 run particle explosion_emitter ~ ~ ~ 3.5 0 3.5 0 3 force @a
execute if score $is ui_temp matches 10 run particle lava ~ ~ ~ 3.5 1 3.5 0 80 force @a
execute if score $is ui_temp matches 13 run playsound entity.generic.explode player @a ~ ~5 ~ 1 0.5
execute if score $is ui_temp matches 13 run particle explosion_emitter ~ ~5 ~ 3 0 3 0 2 force @a
execute if score $is ui_temp matches 13 run particle lava ~ ~5 ~ 3 1 3 0 50 force @a
execute if score $is ui_temp matches 16 run playsound entity.generic.explode player @a ~ ~10 ~ 1 0.5
execute if score $is ui_temp matches 16 run particle explosion_emitter ~ ~10 ~ 2 0 2 0 1 force @a
execute if score $is ui_temp matches 16 run particle lava ~ ~10 ~ 2 1 2 0 20 force @a
execute if score $is ui_temp matches 19 run playsound entity.generic.explode player @a ~ ~15 ~ 1 0.5
execute if score $is ui_temp matches 19 run particle explosion_emitter ~ ~15 ~ 0 0 0 0 1 force @a
execute if score $is ui_temp matches 19 run particle lava ~ ~15 ~ 1 1 1 0 10 force @a

#
execute if score $is ui_temp matches 39.. run kill @s
