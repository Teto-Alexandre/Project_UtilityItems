# チャクチ

# ダメージを与える
    execute if score $team ui_temp matches 1 run data modify storage ui:temp Name set value '{"text":"スーパーチャクチ","color":"aqua"}'
    execute if score $team ui_temp matches 2 run data modify storage ui:temp Name set value '{"text":"スーパーチャクチ","color":"light_purple"}'
    execute if score $team ui_temp matches 3 run data modify storage ui:temp Name set value '{"text":"スーパーチャクチ","color":"yellow"}'
    execute if score $team ui_temp matches 4 run data modify storage ui:temp Name set value '{"text":"スーパーチャクチ","color":"green"}'
    function ui:tmw/237/misc/temp_team
    scoreboard players set $damage_type ui_temp 3
    scoreboard players set $damage ui_temp 90
    execute at @e[distance=6.5..8,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    scoreboard players set $damage ui_temp 140
    execute at @e[distance=5..6.5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    scoreboard players set $damage ui_temp 360
    execute at @e[distance=..5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    tag @e[tag=ui_temp_team] remove ui_temp_team

# パーティクルで描画、演出
    function ui:template/sphere_particle/7
    function ui:tmw/237/misc/particle_paint
    playsound entity.generic.explode player @a ~ ~ ~ 1 0.8 0

# 塗りポイント加算
    #execute as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_paint += $paint ui_temp

# スペシャル解除
    scoreboard players set $sptime ui_temp 1