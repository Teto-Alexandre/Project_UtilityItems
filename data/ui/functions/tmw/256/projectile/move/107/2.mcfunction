particle dust 1 0.5 1 0.6 ~ ~ ~ 0.5 0 0.5 0 3 force
particle block pink_concrete ~ ~ ~ 0.5 0 0.5 0 1 force
scoreboard players operation $temp ui_temp = @s ui_is
scoreboard players operation $temp ui_temp %= #8 ui_num
execute if score $temp ui_temp matches 0 store result score $paint ui_temp run fill ~-0.5 ~ ~-0.5 ~0.5 ~-4 ~0.5 pink_wool replace #ui:wools