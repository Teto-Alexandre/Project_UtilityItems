execute if score @s ui_is matches 251..300 run particle dust 0.5 1 0.5 0.5 ~ ~ ~ 0 0 0 0 1 force
execute if score @s ui_is matches 201..250 run particle dust 0.5 1 0.5 0.6 ~ ~ ~ 0 0 0 0 1 force
execute if score @s ui_is matches 151..200 run particle dust 0.5 1 0.5 0.7 ~ ~ ~ 0 0 0 0 1 force
execute if score @s ui_is matches 101..150 run particle dust 0.5 1 0.5 0.8 ~ ~ ~ 0 0 0 0 1 force
execute if score @s ui_is matches 51..100 run particle dust 0.5 1 0.5 0.9 ~ ~ ~ 0 0 0 0 1 force
execute if score @s ui_is matches 1..50 run particle dust 0.5 1 0.5 1.0 ~ ~ ~ 0 0 0 0 1 force
execute if predicate ui:percentage/30 store result score $paint ui_temp run fill ~-0.5 ~-2 ~-0.5 ~0.5 ~1 ~0.5 lime_wool replace #ui:wools