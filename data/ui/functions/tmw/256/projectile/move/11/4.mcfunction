particle dust 0.5 1 0.5 1.2 ~ ~-0.3 ~ 0 0.45 0 0 1 force
particle block lime_concrete ^0.4 ^ ^-0.2 0 0 0 0 1 force
particle block lime_concrete ^0.2 ^ ^-0.1 0 0 0 0 1 force
particle block lime_concrete ^0.0 ^ ^ 0 0 0 0 1 force
particle block lime_concrete ^-0.2 ^ ^-0.1 0 0 0 0 1 force
particle block lime_concrete ^-0.4 ^ ^-0.2 0 0 0 0 1 force
scoreboard players operation $calc ui_br_temp = @s ui_br_temp
scoreboard players operation $calc ui_br_temp %= #3 ui_num
execute if score $calc ui_br_temp matches 1..2 store result score $paint ui_temp run fill ~-0.3 ~ ~-0.3 ~0.3 ~-2 ~0.3 lime_wool replace #ui:wools
scoreboard players reset $calc ui_br_temp