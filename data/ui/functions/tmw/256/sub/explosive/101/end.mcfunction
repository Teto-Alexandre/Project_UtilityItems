# スプラッシュボム

# ダメージを与える
    execute if score $team ui_temp matches 1 run data modify storage ui:temp Name set value '{"text":"スプラッシュボム","color":"aqua"}'
    execute if score $team ui_temp matches 2 run data modify storage ui:temp Name set value '{"text":"スプラッシュボム","color":"light_purple"}'
    execute if score $team ui_temp matches 3 run data modify storage ui:temp Name set value '{"text":"スプラッシュボム","color":"yellow"}'
    execute if score $team ui_temp matches 4 run data modify storage ui:temp Name set value '{"text":"スプラッシュボム","color":"green"}'
    scoreboard players set $damage_type ui_temp 3
    scoreboard players set $damage ui_temp 80
    execute at @e[distance=3..4.5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/256/projectile/hit.marker
    scoreboard players set $damage ui_temp 360
    execute at @e[distance=..3,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/256/projectile/hit.marker

# パーティクルで描画、演出
    function ui:template/sphere_particle/3.5
    function ui:tmw/256/misc/particle_paint
    playsound entity.generic.explode player @a ~ ~ ~ 1 0.8 0

# 塗りポイント加算
    execute if entity @s[tag=!tmw256_sub_nopoint] as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_paint += $paint ui_temp

# パーティクルと本体を消去
    kill @s