# トラップ

# ダメージを与える
    execute if score $team ui_temp matches 1 run data modify storage ui:temp Name set value '{"text":"トラップ","color":"aqua"}'
    execute if score $team ui_temp matches 2 run data modify storage ui:temp Name set value '{"text":"トラップ","color":"light_purple"}'
    scoreboard players set @s ui_bdt 3
    scoreboard players set @s ui_dmg 80
    execute at @e[distance=3..5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker
    scoreboard players set @s ui_dmg 180
    execute at @e[distance=..3,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.marker

# パーティクルで描画、演出
    function ui:template/sphere_particle/3.5
    function ui:tmw/237/misc/particle_paint
    playsound entity.generic.explode player @a ~ ~ ~ 1 0.8 0

# 塗りポイント加算
    execute as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_paint += $paint ui_temp

# パーティクルと本体を消去
    kill @s