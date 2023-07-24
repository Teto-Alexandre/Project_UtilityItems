playsound block.iron_trapdoor.close player @a ~ ~ ~ 1 1 0
particle flash ~ ~ ~ 0 0 0 0 1 force

# 攻撃力を計算
scoreboard players operation $damage ui_temp = @s ui_dmg
scoreboard players operation $damage ui_temp *= @s ui_bm
scoreboard players operation $damage ui_temp /= #50 ui_num
scoreboard players operation $damage_type ui_temp = @s ui_bdt

#tellraw @a [{"score":{"name": "@s","objective": "ui_proj_stat_pierce_entity"}}]
execute if score @s ui_proj_stat_pierce_entity matches 0 run tag @s add tmw_255_proj_del
execute if score @s ui_proj_stat_pierce_entity matches 1.. run scoreboard players remove @s ui_proj_stat_pierce_entity 1