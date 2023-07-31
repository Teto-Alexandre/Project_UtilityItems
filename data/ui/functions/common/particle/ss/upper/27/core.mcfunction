#

# 放出方向
summon marker ^ ^ ^1.5 {Tags:["ui_temp_particle"]}
execute as @e[tag=ui_temp_particle,limit=1] run function ui:template/square_shuffle
execute if score $is ui_temp matches 1.. facing entity @e[tag=ui_temp_particle,limit=1] feet run particle firework ~ ~ ~ ^ ^ ^100000 0.000005 0 force
kill @e[tag=ui_temp_particle]
summon marker ^ ^ ^1.5 {Tags:["ui_temp_particle"]}
execute as @e[tag=ui_temp_particle,limit=1] run function ui:template/square_shuffle
execute if score $is ui_temp matches 1.. facing entity @e[tag=ui_temp_particle,limit=1] feet run particle firework ~ ~ ~ ^ ^ ^100000 0.000005 0 force
kill @e[tag=ui_temp_particle]
summon marker ^ ^ ^1.5 {Tags:["ui_temp_particle"]}
execute as @e[tag=ui_temp_particle,limit=1] run function ui:template/square_shuffle
execute if score $is ui_temp matches 1.. facing entity @e[tag=ui_temp_particle,limit=1] feet run particle firework ~ ~ ~ ^ ^ ^100000 0.000006 0 force
kill @e[tag=ui_temp_particle]
summon marker ^ ^ ^1.5 {Tags:["ui_temp_particle"]}
execute as @e[tag=ui_temp_particle,limit=1] run function ui:template/square_shuffle
execute if score $is ui_temp matches 1.. facing entity @e[tag=ui_temp_particle,limit=1] feet run particle firework ~ ~ ~ ^ ^ ^100000 0.000006 0 force
kill @e[tag=ui_temp_particle]
summon marker ^ ^ ^1.5 {Tags:["ui_temp_particle"]}
execute as @e[tag=ui_temp_particle,limit=1] run function ui:template/square_shuffle
execute if score $is ui_temp matches 1.. facing entity @e[tag=ui_temp_particle,limit=1] feet run particle firework ~ ~ ~ ^ ^ ^100000 0.000007 0 force
kill @e[tag=ui_temp_particle]
summon marker ^ ^ ^1.5 {Tags:["ui_temp_particle"]}
execute as @e[tag=ui_temp_particle,limit=1] run function ui:template/square_shuffle
execute if score $is ui_temp matches 1.. facing entity @e[tag=ui_temp_particle,limit=1] feet run particle firework ~ ~ ~ ^ ^ ^100000 0.000007 0 force
kill @e[tag=ui_temp_particle]
summon marker ^ ^ ^1.5 {Tags:["ui_temp_particle"]}
execute as @e[tag=ui_temp_particle,limit=1] run function ui:template/square_shuffle
execute if score $is ui_temp matches 1.. facing entity @e[tag=ui_temp_particle,limit=1] feet run particle firework ~ ~ ~ ^ ^ ^100000 0.000008 0 force
kill @e[tag=ui_temp_particle]
particle dust 1 0.8 0 2 ~ ~ ~ 0.6 0.6 0.6 0 10 force
particle flash ~ ~ ~ 0 0 0 0 1 force
playsound entity.zombie.attack_wooden_door player @a ~ ~ ~ 0.8 0.5 0
playsound entity.zombie.attack_iron_door player @a ~ ~ ~ 0.8 1.2 0

#
execute if score $is ui_temp matches 1.. run kill @s