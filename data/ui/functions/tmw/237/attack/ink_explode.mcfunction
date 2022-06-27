# 死亡時インク爆発

# ダメージを与える
    data modify storage ui:temp Name set value '{"text":"","color":"gray"}'
    scoreboard players set @s ui_bdt 3
    scoreboard players set @s ui_dmg 60
    execute at @e[distance=3..5.5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    scoreboard players set @s ui_dmg 150
    execute at @e[distance=..3,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker

# パーティクルで描画、演出
    function ui:template/sphere_particle/5
    scoreboard players set $paint ui_temp 0
    execute if score $team ui_temp matches 1 at @e[tag=ui_temp_particle] run particle dust 0.5 1 1 1 ~ ~ ~ 0 0 0 0 1 force
    execute if score $team ui_temp matches 1 at @e[tag=ui_temp_particle] run particle block light_blue_concrete ~ ~ ~ 0 0 0 0 1 force
    execute if score $team ui_temp matches 1 at @e[tag=ui_temp_particle] if block ~ ~ ~ #ui:wools unless block ~ ~ ~ light_blue_wool run scoreboard players add $paint ui_temp 1
    execute if score $team ui_temp matches 2 at @e[tag=ui_temp_particle] run particle dust 1 0.5 1 1 ~ ~ ~ 0 0 0 0 1 force
    execute if score $team ui_temp matches 2 at @e[tag=ui_temp_particle] run particle block pink_concrete ~ ~ ~ 0 0 0 0 1 force
    execute if score $team ui_temp matches 2 at @e[tag=ui_temp_particle] if block ~ ~ ~ #ui:wools unless block ~ ~ ~ pink_wool run scoreboard players add $paint ui_temp 1
    playsound entity.generic.explode player @a ~ ~ ~ 1 0.8 0

# 塗り
    execute if score $team ui_temp matches 1 at @e[tag=ui_temp_particle] run fill ~ ~ ~ ~ ~ ~ light_blue_wool replace #ui:wools
    execute if score $team ui_temp matches 2 at @e[tag=ui_temp_particle] run fill ~ ~ ~ ~ ~ ~ pink_wool replace #ui:wools

# 塗りポイント加算
    execute as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_paint += $paint ui_temp

# パーティクルと本体を消去
    kill @e[tag=ui_temp_particle]
    kill @s