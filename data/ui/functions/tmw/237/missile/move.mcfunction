# 射程うんぬん
    scoreboard players remove @s ui_temp 10
    scoreboard players remove @s ui_br 1

# 移動と反射コモン
    teleport @s ^ ^ ^0.5
    execute as @s[tag=!ui_refd] at @s run function ui:tmw/214/ref_common

# ダメージ
    execute positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/237/missile/hit

# 塗り値を初期化
    scoreboard players set $paint ui_temp 0

# 壁接触判定 - 液体の中ならスピードが最低値になる上に毎tick貫通力が減っていく
    execute unless block ~ ~ ~ #ui:nocol run tag @s add tmw_237_proj_del
    execute if block ~ ~ ~ #ui:liq run tag @s add tmw_237_proj_del

# 見た目
    execute if score @s ui_bpart matches 1 run function ui:tmw/237/missile/move/1
    execute if score @s ui_bpart matches 2 run function ui:tmw/237/missile/move/2
    execute if score @s ui_bpart matches 3 run function ui:tmw/237/missile/move/3
    execute if score @s ui_bpart matches 4 run function ui:tmw/237/missile/move/4
    execute if score @s ui_bpart matches 5 run function ui:tmw/237/missile/move/5
    execute if score @s ui_bpart matches 6 run function ui:tmw/237/missile/move/6
    execute if score @s ui_bpart matches 7 run function ui:tmw/237/missile/move/7
    execute if score @s ui_bpart matches 8 run function ui:tmw/237/missile/move/8
    execute if score @s ui_bpart matches 21 run function ui:tmw/237/missile/move/21
    scoreboard players operation $id ui_temp = @s ui_id
    execute as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_paint += $paint ui_temp

# 移動値が無くなるまで繰り返す
    execute as @s[scores={ui_temp=10..,ui_br=1..,},tag=!ui_proj_common_nocol,tag=!ui_proj_common_hit,tag=!ui_temp_col] at @s run function ui:tmw/237/missile/move