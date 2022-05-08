# モーションが正ならエフェクト解除
execute store result score $temp ui_temp run data get entity @s Motion.[1] 10
#tellraw @a {"score":{"name":"$temp","objective":"temp"},"color":"yellow"}
execute if score $temp ui_temp matches 13.. run effect clear @s levitation
execute if score $temp ui_temp matches 13.. run tag @s remove ui_temp_lev_jump