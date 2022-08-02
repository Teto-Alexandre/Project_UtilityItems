execute as @e[tag=ui_temp_obj,tag=tmw_237_sub_151_1] at @s run fill ~ ~-10 ~ ~ ~20 ~ pink_wool replace #ui:wools
execute if score @s ui_uses matches 2..20 at @s run particle block red_wool ~ ~8 ~ 0 8 0 0 10 force
execute if score @s ui_uses matches 2..20 at @s run particle dust_color_transition 1 0.5 1 2.5 0.5 0 0.5 ~ ~8 ~ 0 8 0 0 2 force
execute if score @s ui_uses matches 21..40 at @s run particle block red_wool ~ ~10 ~ 0.3 10 0.3 0 20 force
execute if score @s ui_uses matches 21..40 at @s run particle dust_color_transition 1 0.5 1 2.5 0.5 0 0.5 ~ ~10 ~ 1.5 10 1.5 0 5 force
execute if score @s ui_uses matches 41..70 at @s run particle block red_wool ~ ~13 ~ 0.6 13 0.6 0 30 force
execute if score @s ui_uses matches 41..70 at @s run particle dust_color_transition 1 0.5 1 2.5 0.5 0 0.5 ~ ~10 ~ 2.5 10 2.5 0 10 force
execute if score @s ui_uses matches 71..100 at @s run particle block red_wool ~ ~17 ~ 1 17 1 0 40 force
execute if score @s ui_uses matches 71..100 at @s run particle dust_color_transition 1 0.5 1 2.5 0.5 0 0.5 ~ ~10 ~ 3.5 10 3.5 0 15 force