#

# 放出方向
summon marker ^ ^ ^1 {Tags:["ui_temp_particle"]}
execute as @e[tag=ui_temp_particle,limit=1] run function ui:template/square_shuffle
execute facing entity @e[tag=ui_temp_particle,limit=1] feet run particle dust_color_transition 0 0 0 1 1 1 1 ^ ^ ^0.0 0 0 0 0 1 force
execute facing entity @e[tag=ui_temp_particle,limit=1] feet run particle dust_color_transition 0 0 0 1 1 1 1 ^ ^ ^0.3 0 0 0 0 1 force
execute facing entity @e[tag=ui_temp_particle,limit=1] feet run particle dust_color_transition 0 0 0 1 1 1 1 ^ ^ ^0.6 0 0 0 0 1 force
execute facing entity @e[tag=ui_temp_particle,limit=1] feet run particle dust_color_transition 0 0 0 1 1 1 1 ^ ^ ^0.9 0 0 0 0 1 force
execute facing entity @e[tag=ui_temp_particle,limit=1] feet run particle dust_color_transition 0 0 0 1 1 1 1 ^ ^ ^1.2 0 0 0 0 1 force
kill @e[tag=ui_temp_particle]
summon marker ^ ^ ^1 {Tags:["ui_temp_particle"]}
execute as @e[tag=ui_temp_particle,limit=1] run function ui:template/square_shuffle
execute facing entity @e[tag=ui_temp_particle,limit=1] feet run particle dust_color_transition 0 0 0 1 1 1 1 ^ ^ ^0.0 0 0 0 0 1 force
execute facing entity @e[tag=ui_temp_particle,limit=1] feet run particle dust_color_transition 0 0 0 1 1 1 1 ^ ^ ^0.3 0 0 0 0 1 force
execute facing entity @e[tag=ui_temp_particle,limit=1] feet run particle dust_color_transition 0 0 0 1 1 1 1 ^ ^ ^0.6 0 0 0 0 1 force
execute facing entity @e[tag=ui_temp_particle,limit=1] feet run particle dust_color_transition 0 0 0 1 1 1 1 ^ ^ ^0.9 0 0 0 0 1 force
execute facing entity @e[tag=ui_temp_particle,limit=1] feet run particle dust_color_transition 0 0 0 1 1 1 1 ^ ^ ^1.2 0 0 0 0 1 force
kill @e[tag=ui_temp_particle]
summon marker ^ ^ ^1 {Tags:["ui_temp_particle"]}
execute as @e[tag=ui_temp_particle,limit=1] run function ui:template/square_shuffle
execute facing entity @e[tag=ui_temp_particle,limit=1] feet run particle dust_color_transition 0 0 0 1 1 1 1 ^ ^ ^0.0 0 0 0 0 1 force
execute facing entity @e[tag=ui_temp_particle,limit=1] feet run particle dust_color_transition 0 0 0 1 1 1 1 ^ ^ ^0.3 0 0 0 0 1 force
execute facing entity @e[tag=ui_temp_particle,limit=1] feet run particle dust_color_transition 0 0 0 1 1 1 1 ^ ^ ^0.6 0 0 0 0 1 force
execute facing entity @e[tag=ui_temp_particle,limit=1] feet run particle dust_color_transition 0 0 0 1 1 1 1 ^ ^ ^0.9 0 0 0 0 1 force
execute facing entity @e[tag=ui_temp_particle,limit=1] feet run particle dust_color_transition 0 0 0 1 1 1 1 ^ ^ ^1.2 0 0 0 0 1 force
kill @e[tag=ui_temp_particle]
summon marker ^ ^ ^1 {Tags:["ui_temp_particle"]}
execute as @e[tag=ui_temp_particle,limit=1] run function ui:template/square_shuffle
execute facing entity @e[tag=ui_temp_particle,limit=1] feet run particle dust_color_transition 0 0 0 1 1 1 1 ^ ^ ^0.0 0 0 0 0 1 force
execute facing entity @e[tag=ui_temp_particle,limit=1] feet run particle dust_color_transition 0 0 0 1 1 1 1 ^ ^ ^0.3 0 0 0 0 1 force
execute facing entity @e[tag=ui_temp_particle,limit=1] feet run particle dust_color_transition 0 0 0 1 1 1 1 ^ ^ ^0.6 0 0 0 0 1 force
execute facing entity @e[tag=ui_temp_particle,limit=1] feet run particle dust_color_transition 0 0 0 1 1 1 1 ^ ^ ^0.9 0 0 0 0 1 force
execute facing entity @e[tag=ui_temp_particle,limit=1] feet run particle dust_color_transition 0 0 0 1 1 1 1 ^ ^ ^1.2 0 0 0 0 1 force
kill @e[tag=ui_temp_particle]
summon marker ^ ^ ^1 {Tags:["ui_temp_particle"]}
execute as @e[tag=ui_temp_particle,limit=1] run function ui:template/square_shuffle
execute facing entity @e[tag=ui_temp_particle,limit=1] feet run particle dust_color_transition 0 0 0 1 1 1 1 ^ ^ ^0.0 0 0 0 0 1 force
execute facing entity @e[tag=ui_temp_particle,limit=1] feet run particle dust_color_transition 0 0 0 1 1 1 1 ^ ^ ^0.3 0 0 0 0 1 force
execute facing entity @e[tag=ui_temp_particle,limit=1] feet run particle dust_color_transition 0 0 0 1 1 1 1 ^ ^ ^0.6 0 0 0 0 1 force
execute facing entity @e[tag=ui_temp_particle,limit=1] feet run particle dust_color_transition 0 0 0 1 1 1 1 ^ ^ ^0.9 0 0 0 0 1 force
execute facing entity @e[tag=ui_temp_particle,limit=1] feet run particle dust_color_transition 0 0 0 1 1 1 1 ^ ^ ^1.2 0 0 0 0 1 force
kill @e[tag=ui_temp_particle]

#
execute if score $is ui_temp matches 1.. run kill @s