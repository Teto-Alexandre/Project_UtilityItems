scoreboard players set $success ui_temp 0
execute if entity @s[tag=tmw272_ready] run scoreboard players set $success ui_temp 1

execute if score $success ui_temp matches 0 run tag @s add tmw272_ready
execute if score $success ui_temp matches 0 run playsound entity.experience_orb.pickup player @a ~ ~ ~ 1 0.8 0
execute if score $success ui_temp matches 0 run particle firework ~ ~1 ~ 0.5 0.5 0.5 0.1 10 force

execute if score $success ui_temp matches 1 run tag @s remove tmw272_ready
execute if score $success ui_temp matches 1 run playsound block.dispenser.fail player @a ~ ~ ~ 1 0.5
execute if score $success ui_temp matches 1 run particle dust 0 0 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 10 force
