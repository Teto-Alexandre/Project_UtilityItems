#射程うんぬん
    scoreboard players remove @s ui_temp 1
    scoreboard players remove @s ui_br 1

#移動と反射コモン
    teleport @s ^ ^ ^0.5
    execute as @s at @s run function ui:tmw/214/ref_common

#ダメージ
    execute positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,type=!#ui:unhurtable,tag=!ui_unhurtable] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,type=!#ui:unhurtable,tag=!ui_unhurtable] at @s run function ui:tmw/302/proj/hit
    execute positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,type=end_crystal] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,type=end_crystal] at @s at @e[type=end_crystal,sort=nearest,limit=1] run summon tnt ~ ~ ~
    execute positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,type=shulker_bullet] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,type=shulker_bullet] at @s as @e[type=shulker_bullet,sort=nearest,limit=1] run kill @s

#見た目
    execute if score @s ui_bc2 matches 0 if score @s ui_bt matches 1 run particle dust 0.5 1 1 1 ~ ~ ~ 0 0 0 0 1 force
    execute if score @s ui_bc2 matches 1 if score @s ui_bt matches 1 run particle dust 0.5 1 1 1 ^ ^ ^0.25 0 0 0 0 1 force
    execute if score @s ui_bc2 matches 0 if score @s ui_bt matches 2 run particle dust 1 0.5 1 1 ~ ~ ~ 0 0 0 0 1 force
    execute if score @s ui_bc2 matches 1 if score @s ui_bt matches 2 run particle dust 1 0.5 1 1 ^ ^ ^0.25 0 0 0 0 1 force
    execute if score @s ui_bc2 matches 0 if score @s ui_bt matches -1 run particle dust 1 1 1 1 ~ ~ ~ 0 0 0 0 1 force
    execute if score @s ui_bc2 matches 1 if score @s ui_bt matches -1 run particle dust 1 1 1 1 ^ ^ ^0.25 0 0 0 0 1 force

#壁に当たるなら消える
    execute unless block ^ ^ ^0.5 #ui:nocol run function ui:tmw/302/proj/kill

#移動値が無くなるまで繰り返す
    execute as @s[scores={ui_temp=1..,ui_br=1..,},tag=!ui_302_nocol] at @s run function ui:tmw/302/proj/move