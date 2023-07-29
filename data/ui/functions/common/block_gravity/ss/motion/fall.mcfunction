clone ~ ~ ~ ~ ~ ~ ~ ~-1 ~ masked move
execute at @s run teleport @s ~ ~-1 ~
execute store success score $success ui_temp run clone ~ ~-2 ~ ~ ~-2 ~ ~ ~-2 ~ replace move
execute if score $success ui_temp matches 0 run setblock ~ ~-1 ~ air
scoreboard players set $success ui_temp 2

tag @s remove ui_common_temp_block_gravity_slided