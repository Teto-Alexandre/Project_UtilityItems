# 同じチームを認識して識別（もしかしたら回復スペル作るかもしれないのでメモ）
    scoreboard players operation $temp ui_temp = @s ui_team
    execute as @e[predicate=ui:load_unhurtable] if score @s ui_team = $temp ui_temp run tag @s add ui_temp_team

# ヒット音
    execute if score @s ui_hpart matches 0 run playsound minecraft:entity.player.attack.strong neutral @a ~ ~ ~ 1 1
    execute if score @s ui_hpart matches 5 run playsound minecraft:block.honey_block.break neutral @a ~ ~ ~ 1 1

# ヒットパーティクル
    execute if score @s ui_hpart matches 5 run particle dust 0.5 1 1 1 ~ ~ ~ 0.4 0.4 0.4 0 10 force
    execute if score @s ui_hpart matches 5 run particle block light_blue_concrete ~ ~ ~ 0.4 0.4 0.4 0 10 force
    execute if score @s ui_hpart matches 6 run function ui:template/sphere_particle/3
    execute if score @s ui_hpart matches 6 run scoreboard players set $temp ui_temp 0
    execute if score @s ui_hpart matches 6 run scoreboard players set @s ui_bdt 3
    execute if score @s ui_hpart matches 6 run scoreboard players set @s ui_dmg 60
    execute if score @s ui_hpart matches 6 at @e[distance=..3,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    execute if score @s ui_hpart matches 6 at @e[tag=ui_temp_particle] run particle dust 0.5 1 1 1 ~ ~ ~ 0 0 0 0 1 force
    execute if score @s ui_hpart matches 6 at @e[tag=ui_temp_particle] run particle block light_blue_concrete ~ ~ ~ 0 0 0 0 1 force
    execute if score @s ui_hpart matches 6 at @e[tag=ui_temp_particle] if block ~ ~ ~ #ui:wools unless block ~ ~ ~ light_blue_wool run scoreboard players add $temp ui_temp 1
    execute if score @s ui_hpart matches 6 at @e[tag=ui_temp_particle] run fill ~ ~ ~ ~ ~ ~ light_blue_wool replace #ui:wools
    execute if score @s ui_hpart matches 6 run kill @e[tag=ui_temp_particle]
    execute if score @s ui_hpart matches 7 run function ui:template/sphere_particle/4
    execute if score @s ui_hpart matches 7 run scoreboard players set $temp ui_temp 0
    execute if score @s ui_hpart matches 7 run scoreboard players set @s ui_bdt 3
    execute if score @s ui_hpart matches 7 run scoreboard players set @s ui_dmg 80
    execute if score @s ui_hpart matches 7 at @e[distance=..4,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    execute if score @s ui_hpart matches 7 at @e[tag=ui_temp_particle] run particle dust 0.5 1 1 1 ~ ~ ~ 0 0 0 0 1 force
    execute if score @s ui_hpart matches 7 at @e[tag=ui_temp_particle] run particle block light_blue_concrete ~ ~ ~ 0 0 0 0 1 force
    execute if score @s ui_hpart matches 7 at @e[tag=ui_temp_particle] if block ~ ~ ~ #ui:wools unless block ~ ~ ~ light_blue_wool run scoreboard players add $temp ui_temp 1
    execute if score @s ui_hpart matches 7 at @e[tag=ui_temp_particle] run fill ~ ~ ~ ~ ~ ~ light_blue_wool replace #ui:wools
    execute if score @s ui_hpart matches 7 run kill @e[tag=ui_temp_particle]
    execute if score @s ui_hpart matches 15 run particle dust 1 0.5 1 1 ~ ~ ~ 0.4 0.4 0.4 0 10 force
    execute if score @s ui_hpart matches 15 run particle block pink_concrete ~ ~ ~ 0.4 0.4 0.4 0 10 force
    execute if score @s ui_hpart matches 16 run function ui:template/sphere_particle/3
    execute if score @s ui_hpart matches 16 run scoreboard players set $temp ui_temp 0
    execute if score @s ui_hpart matches 16 run scoreboard players set @s ui_bdt 3
    execute if score @s ui_hpart matches 16 run scoreboard players set @s ui_dmg 60
    execute if score @s ui_hpart matches 16 at @e[distance=..3,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    execute if score @s ui_hpart matches 16 at @e[tag=ui_temp_particle] run particle dust 1 0.5 1 1 ~ ~ ~ 0 0 0 0 1 force
    execute if score @s ui_hpart matches 16 at @e[tag=ui_temp_particle] run particle block pink_concrete ~ ~ ~ 0 0 0 0 1 force
    execute if score @s ui_hpart matches 16 at @e[tag=ui_temp_particle] if block ~ ~ ~ #ui:wools unless block ~ ~ ~ pink_wool run scoreboard players add $temp ui_temp 1
    execute if score @s ui_hpart matches 16 at @e[tag=ui_temp_particle] run fill ~ ~ ~ ~ ~ ~ pink_wool replace #ui:wools
    execute if score @s ui_hpart matches 16 run kill @e[tag=ui_temp_particle]
    execute if score @s ui_hpart matches 17 run function ui:template/sphere_particle/4
    execute if score @s ui_hpart matches 17 run scoreboard players set $temp ui_temp 0
    execute if score @s ui_hpart matches 17 run scoreboard players set @s ui_bdt 3
    execute if score @s ui_hpart matches 17 run scoreboard players set @s ui_dmg 80
    execute if score @s ui_hpart matches 17 at @e[distance=..4,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    execute if score @s ui_hpart matches 17 at @e[tag=ui_temp_particle] run particle dust 1 0.5 1 1 ~ ~ ~ 0 0 0 0 1 force
    execute if score @s ui_hpart matches 17 at @e[tag=ui_temp_particle] run particle block pink_concrete ~ ~ ~ 0 0 0 0 1 force
    execute if score @s ui_hpart matches 17 at @e[tag=ui_temp_particle] if block ~ ~ ~ #ui:wools unless block ~ ~ ~ pink_wool run scoreboard players add $temp ui_temp 1
    execute if score @s ui_hpart matches 17 at @e[tag=ui_temp_particle] run fill ~ ~ ~ ~ ~ ~ pink_wool replace #ui:wools
    execute if score @s ui_hpart matches 17 run kill @e[tag=ui_temp_particle]

# その他
    execute if score @s ui_hpart matches 5 store result score $temp ui_temp run fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 light_blue_wool replace #ui:wools
    execute if score @s ui_hpart matches 15 store result score $temp ui_temp run fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 pink_wool replace #ui:wools
    execute if score @s ui_hpart matches 5..17 as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_paint += $temp ui_temp

# キル
    kill @s

# 一時タグ削除
    tag @e[tag=ui_temp_team] remove ui_temp_team