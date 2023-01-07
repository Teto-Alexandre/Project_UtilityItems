#射程うんぬん
    scoreboard players remove @s ui_temp 10
    scoreboard players remove @s ui_br 1

#移動と反射コモン
    teleport @s ^ ^ ^0.5
    execute as @s at @s run function ui:tmw/214/ref_common

#ダメージ
    execute unless score @s ui_autohit matches 1 positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run tag @s add ui_proj_common_hit
    execute if score @s ui_autohit matches 1 positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:common/projectile/hit
    #execute positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,type=end_crystal] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,type=end_crystal] at @s at @e[type=end_crystal,sort=nearest,limit=1] run summon snowball ~ ~2.5 ~ {Motion:[0.0d,-0.5d,0.0d]}
    #モブグリfalseでも損壊するんだからtntで良くない？
    execute positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,type=end_crystal] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,type=end_crystal] at @s at @e[type=end_crystal,sort=nearest,limit=1] run summon tnt ~ ~-0.5 ~
    execute positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,type=shulker_bullet] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,type=shulker_bullet] at @s as @e[type=shulker_bullet,sort=nearest,limit=1] run kill @s

#見た目
    execute if score @s ui_bpart matches 1 run particle flame ~ ~ ~ 0 0 0 0.02 1 force
    execute if score @s ui_bpart matches 2 run particle dust 0.5 1 1 1 ~ ~ ~ 0 0 0 0.02 1 force
    execute if score @s ui_bpart matches 2 run particle block ice ~ ~ ~ 0 0 0 0 1 force
    execute if score @s ui_bpart matches 3 run particle dust 1 1 0.5 1 ~ ~ ~ 0 0 0 0.02 1 force
    execute if score @s ui_bpart matches 3 run particle block gold_block ~ ~ ~ 0 0 0 0 1 force
    execute if score @s ui_bpart matches 4 run particle crit ~ ~ ~ 0 0 0 0.1 1 force

#壁接触判定 - 液体の中ならスピードが最低値になる上に毎tick貫通力が減っていく
    execute positioned ^ ^ ^0.5 unless block ~ ~ ~ #ui:nocol run function ui:common/projectile/block_col
    execute as @s[tag=!ui_temp_col] positioned ^ ^ ^0.5 if block ~ ~ ~ #ui:liq run function ui:common/projectile/liq_col

#移動値が無くなるまで繰り返す
    execute as @s[scores={ui_temp=10..,ui_br=1..},tag=!ui_proj_common_nocol,tag=!ui_proj_common_hit,tag=!ui_temp_col] at @s run function ui:common/projectile/move