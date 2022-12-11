#

# 放出方向
summon marker ^ ^ ^1.5 {Tags:["ui_temp_particle"]}
execute as @e[tag=ui_temp_particle,limit=1] run function ui:template/square_shuffle
execute if score $is ui_temp matches 1.. facing entity @e[tag=ui_temp_particle,limit=1] feet run particle smoke ~ ~ ~ ^ ^ ^100000 0.000003 0 force
kill @e[tag=ui_temp_particle]
summon marker ^ ^ ^1.5 {Tags:["ui_temp_particle"]}
execute as @e[tag=ui_temp_particle,limit=1] run function ui:template/square_shuffle
execute if score $is ui_temp matches 1.. facing entity @e[tag=ui_temp_particle,limit=1] feet run particle smoke ~ ~ ~ ^ ^ ^100000 0.000003 0 force
kill @e[tag=ui_temp_particle]
summon marker ^ ^ ^1.5 {Tags:["ui_temp_particle"]}
execute as @e[tag=ui_temp_particle,limit=1] run function ui:template/square_shuffle
execute if score $is ui_temp matches 1.. facing entity @e[tag=ui_temp_particle,limit=1] feet run particle smoke ~ ~ ~ ^ ^ ^100000 0.000003 0 force
kill @e[tag=ui_temp_particle]
particle dust 1 0.5 0 0.4 ^ ^ ^0.2 0.15 0.15 0.15 0 4 force

#
execute if score $is ui_temp matches 1.. run kill @s