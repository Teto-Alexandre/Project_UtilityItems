# 死亡時インク爆発

# ダメージを与える
    scoreboard players operation $Attacker tds_dmg = $id ui_temp
    data modify storage ui:temp Name set value ""
    scoreboard players set $damage_type ui_temp 3
    scoreboard players set $damage ui_temp 60
    execute at @e[distance=2.5..5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.undeath
    scoreboard players set $damage ui_temp 150
    execute at @e[distance=..2.5,tag=!ui_temp_team,predicate=ui:load_unhurtable] run function ui:tmw/237/projectile/hit.undeath

# パーティクルで描画、演出
    function ui:template/sphere_particle/4.5
    function ui:tmw/237/misc/particle_paint
    playsound entity.generic.explode player @a ~ ~ ~ 1 0.8 0

# 塗りポイント加算
    execute as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_paint += $paint ui_temp

# パーティクルと本体を消去
    kill @s