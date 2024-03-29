# 射程うんぬん
    scoreboard players remove @s ui_temp 10

# 移動と反射コモン
    teleport @s ^ ^ ^0.5
    execute if score $sub102 ui_temp matches 1 as @s[tag=!ui_refd] at @s run function ui:tmw/214/ref_common
    execute if score $sub112 ui_temp matches 1 run function ui:tmw/255/projectile/acc

# ダメージ
    execute positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/255/projectile/hit
    execute positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,type=end_crystal] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,type=end_crystal] at @s at @e[type=end_crystal,sort=nearest,limit=1] run summon tnt ~ ~-0.5 ~

# 塗り値を初期化
    scoreboard players set $paint ui_temp 0

# 見た目
    execute if score @s ui_bpart matches -6 run function ui:tmw/255/projectile/move/-6
    execute if score @s ui_bpart matches -5 run function ui:tmw/255/projectile/move/-5
    execute if score @s ui_bpart matches -4 run function ui:tmw/255/projectile/move/-4
    execute if score @s ui_bpart matches -3 run function ui:tmw/255/projectile/move/-3
    execute if score @s ui_bpart matches -2 run function ui:tmw/255/projectile/move/-2
    execute if score @s ui_bpart matches -1 run function ui:tmw/255/projectile/move/-1
    execute if score @s ui_bpart matches 1 run function ui:tmw/255/projectile/move/1
    execute if score @s ui_bpart matches 2 run function ui:tmw/255/projectile/move/2

#壁接触判定 - 液体の中ならスピードが最低値になる上に毎tick貫通力が減っていく
    execute positioned ^ ^ ^0.5 unless block ~ ~ ~ #ui:nocol run function ui:tmw/255/projectile/col/block_col
    execute as @s[tag=!ui_temp_col] positioned ^ ^ ^0.5 if block ~ ~ ~ #ui:liq run function ui:tmw/255/projectile/col/liq_col

# 移動値が無くなるまで繰り返す
    execute as @s[scores={ui_temp=10..},tag=!ui_proj_common_nocol,tag=!ui_proj_common_hit,tag=!ui_temp_col,tag=!tmw_255_proj_del] at @s run function ui:tmw/255/projectile/move