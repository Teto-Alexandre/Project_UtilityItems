#
execute if score $is ui_temp matches 6 run fill ~3 ~2 ~2 ~-3 ~-2 ~-2 cobblestone replace #ui:nocol
execute if score $is ui_temp matches 6 run fill ~2 ~3 ~2 ~-2 ~-3 ~-2 cobblestone replace #ui:nocol
execute if score $is ui_temp matches 6 run fill ~2 ~2 ~3 ~-2 ~-2 ~-3 cobblestone replace #ui:nocol

execute if score $is ui_temp matches 21 run fill ~3 ~2 ~2 ~3 ~-2 ~-2 air replace cobblestone
execute if score $is ui_temp matches 21 run fill ~-3 ~2 ~2 ~-3 ~-2 ~-2 air replace cobblestone
execute if score $is ui_temp matches 21 run fill ~2 ~3 ~2 ~-2 ~3 ~-2 air replace cobblestone
execute if score $is ui_temp matches 21 run fill ~2 ~-3 ~2 ~-2 ~-3 ~-2 air replace cobblestone
execute if score $is ui_temp matches 21 run fill ~2 ~2 ~3 ~-2 ~-2 ~3 air replace cobblestone
execute if score $is ui_temp matches 21 run fill ~2 ~2 ~-3 ~-2 ~-2 ~-3 air replace cobblestone

execute if score $is ui_temp matches 36 run fill ~2 ~2 ~2 ~-2 ~2 ~2 air replace cobblestone
execute if score $is ui_temp matches 36 run fill ~2 ~2 ~2 ~2 ~-2 ~2 air replace cobblestone
execute if score $is ui_temp matches 36 run fill ~2 ~2 ~2 ~2 ~2 ~-2 air replace cobblestone
execute if score $is ui_temp matches 36 run fill ~-2 ~-2 ~2 ~-2 ~-2 ~-2 air replace cobblestone
execute if score $is ui_temp matches 36 run fill ~2 ~-2 ~-2 ~-2 ~-2 ~-2 air replace cobblestone
execute if score $is ui_temp matches 36 run fill ~-2 ~2 ~-2 ~-2 ~-2 ~-2 air replace cobblestone
execute if score $is ui_temp matches 36 run fill ~-2 ~2 ~2 ~-2 ~-2 ~2 air replace cobblestone
execute if score $is ui_temp matches 36 run fill ~-2 ~2 ~2 ~-2 ~2 ~-2 air replace cobblestone
execute if score $is ui_temp matches 36 run fill ~2 ~-2 ~2 ~-2 ~-2 ~2 air replace cobblestone
execute if score $is ui_temp matches 36 run fill ~2 ~-2 ~2 ~2 ~-2 ~-2 air replace cobblestone
execute if score $is ui_temp matches 36 run fill ~2 ~2 ~-2 ~-2 ~2 ~-2 air replace cobblestone
execute if score $is ui_temp matches 36 run fill ~2 ~2 ~-2 ~2 ~-2 ~-2 air replace cobblestone

execute if score $is ui_temp matches 51 run fill ~2 ~2 ~2 ~2 ~-2 ~-2 air replace cobblestone
execute if score $is ui_temp matches 51 run fill ~2 ~2 ~2 ~-2 ~2 ~-2 air replace cobblestone
execute if score $is ui_temp matches 51 run fill ~2 ~2 ~2 ~-2 ~-2 ~2 air replace cobblestone
execute if score $is ui_temp matches 51 run fill ~-2 ~2 ~2 ~-2 ~-2 ~-2 air replace cobblestone
execute if score $is ui_temp matches 51 run fill ~2 ~-2 ~2 ~-2 ~-2 ~-2 air replace cobblestone
execute if score $is ui_temp matches 51 run fill ~2 ~2 ~-2 ~-2 ~-2 ~-2 air replace cobblestone

execute if score $is ui_temp matches 66 run fill ~1 ~1 ~1 ~1 ~1 ~1 air replace cobblestone
execute if score $is ui_temp matches 66 run fill ~-1 ~1 ~1 ~-1 ~1 ~1 air replace cobblestone
execute if score $is ui_temp matches 66 run fill ~1 ~-1 ~1 ~1 ~-1 ~1 air replace cobblestone
execute if score $is ui_temp matches 66 run fill ~1 ~1 ~-1 ~1 ~1 ~-1 air replace cobblestone
execute if score $is ui_temp matches 66 run fill ~-1 ~-1 ~1 ~-1 ~-1 ~1 air replace cobblestone
execute if score $is ui_temp matches 66 run fill ~1 ~-1 ~-1 ~1 ~-1 ~-1 air replace cobblestone
execute if score $is ui_temp matches 66 run fill ~-1 ~1 ~-1 ~-1 ~1 ~-1 air replace cobblestone
execute if score $is ui_temp matches 66 run fill ~-1 ~-1 ~-1 ~-1 ~-1 ~-1 air replace cobblestone

execute if score $is ui_temp matches 81 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace cobblestone

#
#execute if score $is ui_temp >= @s ui_is2 run kill @s
execute if score $is ui_temp matches 81.. run kill @s