#射程うんぬん
    scoreboard players remove @s ui_temp 1
    scoreboard players remove @s ui_br 1

#移動と反射コモン
    teleport @s ^ ^ ^0.5
    execute as @s at @s run function ui:tmw/214/ref_common

#ダメージ
    execute positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp_team,predicate=ui:load_unhurtable] at @s run function ui:tmw/305/proj/hit
    execute positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,type=end_crystal] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,type=end_crystal] at @s at @e[type=end_crystal,sort=nearest,limit=1] run summon tnt ~ ~-0.5 ~
    execute positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,type=shulker_bullet] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,type=shulker_bullet] at @s as @e[type=shulker_bullet,sort=nearest,limit=1] run kill @s

#見た目
    #execute if score @s ui_bc2 matches 0 if score @s ui_bt matches 1.. run particle ash ~ ~ ~ 0 0 0 0 1 force
    #execute if score @s ui_bc2 matches 1 if score @s ui_bt matches 1.. run particle ash ^ ^ ^0.25 0 0 0 0 1 force
    #execute if score @s ui_bc2 matches 0 if score @s ui_bt matches 1.. run particle flame ^ ^ ^ 0 0 0 100000 1 force
    #execute if score @s ui_bc2 matches 1 if score @s ui_bt matches 1.. run particle flame ^ ^ ^0.25 0 0 0 100000 1 force
    execute if score @s ui_bc2 matches 0 if score @s ui_bt matches 1.. run particle end_rod ^ ^ ^ 0 0 0 100000 1 force
    execute if score @s ui_bc2 matches 1 if score @s ui_bt matches 1.. run particle end_rod ^ ^ ^0.25 0 0 0 100000 1 force
    #execute if score @s ui_bc2 matches 0 if score @s ui_bt matches 1.. run particle wax_on ^ ^ ^ 0 0 0 1000000 1 force
    #execute if score @s ui_bc2 matches 1 if score @s ui_bt matches 1.. run particle wax_on ^ ^ ^0.25 0 0 0 1000000 1 force
    #execute if score @s ui_bc2 matches 0 if score @s ui_bt matches 1.. run particle electric_spark ^ ^ ^ 0 0 0 1000000 1 force
    #execute if score @s ui_bc2 matches 1 if score @s ui_bt matches 1.. run particle electric_spark ^ ^ ^0.25 0 0 0 1000000 1 force
    execute if score @s ui_gt matches 1 if score @s ui_bt matches 1.. run particle dust 1 1 0.5 0.5 ^ ^-0.2 ^0.125 0.3 0.3 0.3 0 1 force
    execute if score @s ui_gt matches 2 if score @s ui_bt matches 1.. run particle enchanted_hit ^ ^ ^0.125 0 0 0 0.1 1 force

#壁接触判定 - 液体の中ならスピードが最低値になる上に毎tick貫通力が減っていく
    execute positioned ^ ^ ^0.5 unless block ~ ~ ~ #ui:nocol run function ui:tmw/305/proj/block_col
    execute as @s[tag=!ui_temp_col] positioned ^ ^ ^0.5 if block ~ ~ ~ #ui:liq run function ui:tmw/305/proj/liq_col

#移動値が無くなるまで繰り返す
    execute as @s[scores={ui_temp=1..,ui_br=1..},tag=!ui_305_nocol,tag=!ui_temp_col] at @s run function ui:tmw/305/proj/move