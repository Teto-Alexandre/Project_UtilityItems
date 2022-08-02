# レンバクボム最後

# ダメージを与える
    execute if score $team ui_temp matches 1 run data modify storage ui:temp Name set value '{"text":"レンバクボム","color":"aqua"}'
    execute if score $team ui_temp matches 2 run data modify storage ui:temp Name set value '{"text":"レンバクボム","color":"light_purple"}'
    execute if score $team ui_temp matches 3 run data modify storage ui:temp Name set value '{"text":"レンバクボム","color":"yellow"}'
    execute if score $team ui_temp matches 4 run data modify storage ui:temp Name set value '{"text":"レンバクボム","color":"green"}'
    scoreboard players set $damage_type ui_temp 3
    scoreboard players set $damage ui_temp 120
    execute at @e[distance=4..5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    scoreboard players set $damage ui_temp 300
    execute at @e[distance=..4,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker

# パーティクルで描画、演出
    function ui:template/sphere_particle/4.5
    function ui:tmw/237/misc/particle_paint
    playsound entity.generic.explode player @a ~ ~ ~ 1 0.7 0

# 塗りポイント加算
    execute as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_paint += $paint ui_temp

# パーティクルと本体を消去
    kill @s