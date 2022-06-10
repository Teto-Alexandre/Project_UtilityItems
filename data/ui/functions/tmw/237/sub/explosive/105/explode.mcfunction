# レンバクボム

# ダメージを与える
    execute if score $color ui_temp matches 1 run data modify storage ui:temp Name set value '{"text":"レンバクボム","color":"aqua"}'
    execute if score $color ui_temp matches 2 run data modify storage ui:temp Name set value '{"text":"レンバクボム","color":"light_purple"}'
    scoreboard players set @s ui_bdt 3
    scoreboard players set @s ui_dmg 40
    execute at @e[distance=..3.5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker

# パーティクルで描画、演出
    function ui:template/sphere_particle/3
    scoreboard players set $paint ui_temp 0
    execute if score $color ui_temp matches 1 at @e[tag=ui_temp_particle] run particle dust 0.5 1 1 1 ~ ~ ~ 0 0 0 0 1 force
    execute if score $color ui_temp matches 1 at @e[tag=ui_temp_particle] run particle block light_blue_concrete ~ ~ ~ 0 0 0 0 1 force
    execute if score $color ui_temp matches 1 at @e[tag=ui_temp_particle] if block ~ ~ ~ #ui:wools unless block ~ ~ ~ light_blue_wool run scoreboard players add $paint ui_temp 1
    execute if score $color ui_temp matches 2 at @e[tag=ui_temp_particle] run particle dust 1 0.5 1 1 ~ ~ ~ 0 0 0 0 1 force
    execute if score $color ui_temp matches 2 at @e[tag=ui_temp_particle] run particle block pink_concrete ~ ~ ~ 0 0 0 0 1 force
    execute if score $color ui_temp matches 2 at @e[tag=ui_temp_particle] if block ~ ~ ~ #ui:wools unless block ~ ~ ~ pink_wool run scoreboard players add $paint ui_temp 1
    playsound entity.generic.explode player @a ~ ~ ~ 1 1.5 0

# 塗り
    execute if score $color ui_temp matches 1 at @e[tag=ui_temp_particle] run fill ~ ~ ~ ~ ~ ~ light_blue_wool replace #ui:wools
    execute if score $color ui_temp matches 2 at @e[tag=ui_temp_particle] run fill ~ ~ ~ ~ ~ ~ pink_wool replace #ui:wools

# 塗りポイント加算
    execute as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_paint += $paint ui_temp

# パーティクルと本体を消去
    kill @e[tag=ui_temp_particle]