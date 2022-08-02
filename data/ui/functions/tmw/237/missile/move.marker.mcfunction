# ダメージ
    execute positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/237/projectile/hit

# 塗り値を初期化
    scoreboard players set $paint ui_temp 0

# 見た目
    function ui:tmw/237/missile/1
    execute as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_paint += $paint ui_temp

# キル
    kill @e[tag=ui_temp_marker]