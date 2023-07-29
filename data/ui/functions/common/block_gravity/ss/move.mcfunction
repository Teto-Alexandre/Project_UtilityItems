scoreboard players set $success ui_temp -1
execute if score $success ui_temp matches -1 if block ~ ~-1 ~ #ui:nocol run function ui:common/block_gravity/ss/motion/fall
execute if score $success ui_temp matches -1 unless block ~ ~-1 ~ #ui:nocol if block ~1 ~-1 ~ #ui:nocol run tag @s add ui_temp_a
execute if score $success ui_temp matches -1 unless block ~ ~-1 ~ #ui:nocol if block ~-1 ~-1 ~ #ui:nocol run tag @s add ui_temp_a
execute if score $success ui_temp matches -1 unless block ~ ~-1 ~ #ui:nocol if block ~ ~-1 ~1 #ui:nocol run tag @s add ui_temp_a
execute if score $success ui_temp matches -1 unless block ~ ~-1 ~ #ui:nocol if block ~ ~-1 ~-1 #ui:nocol run tag @s add ui_temp_a
execute if score $success ui_temp matches -1 unless block ~ ~-1 ~ #ui:nocol if block ~1 ~-1 ~ #ui:nocol run tag @s add ui_temp_p0
execute if score $success ui_temp matches -1 unless block ~ ~-1 ~ #ui:nocol if block ~-1 ~-1 ~ #ui:nocol run tag @s add ui_temp_n0
execute if score $success ui_temp matches -1 unless block ~ ~-1 ~ #ui:nocol if block ~ ~-1 ~1 #ui:nocol run tag @s add ui_temp_0p
execute if score $success ui_temp matches -1 unless block ~ ~-1 ~ #ui:nocol if block ~ ~-1 ~-1 #ui:nocol run tag @s add ui_temp_0n
execute if score $success ui_temp matches -1 unless block ~ ~-1 ~ #ui:nocol if entity @s[tag=ui_temp_a,tag=!ui_common_temp_block_gravity_slided] run function ui:common/block_gravity/ss/motion/slide
execute if score $success ui_temp matches 2 run function ui:common/block_gravity/ss/motion/spread_gravity
execute if score $success ui_temp matches -1 run function ui:common/block_gravity/ss/motion/end

# 再帰
scoreboard players remove $common_block_gravity ui_temp 1
execute if score $common_block_gravity ui_temp matches 1.. at @s run function ui:common/block_gravity/ss/move