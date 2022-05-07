# モーションが正ならエフェクト解除
execute store result score $temp ui_temp run data get entity @s Motion.[1] 10
execute if score $temp ui_temp matches 1.. run effect clear @s levitation
execute if score $temp ui_temp matches 1.. run tag @s remove ui_temp_lev