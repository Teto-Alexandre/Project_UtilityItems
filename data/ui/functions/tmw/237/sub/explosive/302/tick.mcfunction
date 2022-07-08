# トラップ

# 常時実行
    execute if score @s ui_is matches 1 run playsound block.tripwire.attach player @a ~ ~ ~ 2 0.8 0
    execute if score @s ui_is matches 600.. run tag @s add ui_237_sub_stop
    execute if entity @e[distance=..4,tag=!ui_temp_team,predicate=ui:load_unhurtable] run tag @s add ui_237_sub_stop
    execute if score @s ui_is2 matches 1 run playsound block.tripwire.click_on player @a ~ ~ ~ 1 0.8 0
    execute if score @s ui_is2 matches 1 run playsound block.wooden_trapdoor.close player @a ~ ~ ~ 1 1.2 0
    execute if score @s ui_is2 matches 20.. run tag @s add ui_237_sub_explode
    execute if score @s ui_is matches 20.. if score $team ui_temp matches 1 unless block ~ ~-1.0 ~ light_blue_wool run tag @s add ui_237_sub_explode
    execute if score @s ui_is matches 20.. if score $team ui_temp matches 2 unless block ~ ~-1.0 ~ pink_wool run tag @s add ui_237_sub_explode
    execute if score @s ui_is matches 20.. if score $team ui_temp matches 3 unless block ~ ~-1.0 ~ yellow_wool run tag @s add ui_237_sub_explode
    execute if score @s ui_is matches 20.. if score $team ui_temp matches 4 unless block ~ ~-1.0 ~ lime_wool run tag @s add ui_237_sub_explode

# 処理終了
    scoreboard players add @s ui_is 1
    execute if entity @s[tag=ui_237_sub_stop] run scoreboard players add @s ui_is2 1

# 処理終了（消える）
    execute if entity @s[tag=ui_237_sub_explode] run function ui:tmw/237/sub/explosive/302/end