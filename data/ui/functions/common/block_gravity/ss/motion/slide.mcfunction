scoreboard players set $mod ui_calc1 0

execute if entity @s[tag=ui_temp_p0] run scoreboard players add $mod ui_calc1 1
execute if entity @s[tag=ui_temp_n0] run scoreboard players add $mod ui_calc1 1
execute if entity @s[tag=ui_temp_0p] run scoreboard players add $mod ui_calc1 1
execute if entity @s[tag=ui_temp_0n] run scoreboard players add $mod ui_calc1 1

function ui:common/rand

execute if score $rand ui_calc1 matches 0.. unless entity @s[tag=ui_temp_p0] run scoreboard players add $rand ui_calc1 1
execute if score $rand ui_calc1 matches 1.. unless entity @s[tag=ui_temp_n0] run scoreboard players add $rand ui_calc1 1
execute if score $rand ui_calc1 matches 2.. unless entity @s[tag=ui_temp_0p] run scoreboard players add $rand ui_calc1 1
#execute if score $rand ui_calc1 matches 3.. unless entity @s[tag=ui_temp_0n] run scoreboard players add $rand ui_calc1 1

execute if score $rand ui_calc1 matches 0 run clone ~ ~ ~ ~ ~ ~ ~1 ~-1 ~ masked move
execute if score $rand ui_calc1 matches 0 at @s run teleport @s ~1 ~-1 ~
execute if score $rand ui_calc1 matches 1 run clone ~ ~ ~ ~ ~ ~ ~-1 ~-1 ~ masked move
execute if score $rand ui_calc1 matches 1 at @s run teleport @s ~-1 ~-1 ~
execute if score $rand ui_calc1 matches 2 run clone ~ ~ ~ ~ ~ ~ ~ ~-1 ~1 masked move
execute if score $rand ui_calc1 matches 2 at @s run teleport @s ~ ~-1 ~1
execute if score $rand ui_calc1 matches 3 run clone ~ ~ ~ ~ ~ ~ ~ ~-1 ~-1 masked move
execute if score $rand ui_calc1 matches 3 at @s run teleport @s ~ ~-1 ~-1
scoreboard players set $success ui_temp 2

tag @s remove ui_temp_p0
tag @s remove ui_temp_n0
tag @s remove ui_temp_0p
tag @s remove ui_temp_0n
tag @s remove ui_temp_a

tag @s add ui_common_temp_block_gravity_slided