# 射程
    scoreboard players remove @s ui_temp 1
    scoreboard players remove @s ui_br 1

# 移動
    teleport @s ^ ^ ^0.5
    execute as @s at @s run function ui:tmw/214/ref_common

# ダメージ
    execute positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,tag=!ui_temp,type=!#ui:unhurtable,tag=!ui_unhurtable] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,tag=!ui_temp,type=!#ui:unhurtable,tag=!ui_unhurtable] at @s run function ui:tmw/237/proj/hit
    execute positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,type=end_crystal] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,type=end_crystal] at @s at @e[type=end_crystal,sort=nearest,limit=1] run summon tnt ~ ~ ~
    execute positioned ~-0.5 ~0.1 ~-0.5 positioned ~0.3 ~0.0 ~0.3 if entity @e[dx=0,type=shulker_bullet] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,type=shulker_bullet] at @s as @e[type=shulker_bullet,sort=nearest,limit=1] run kill @s

# 見た目: マズルフラッシュ軽減のために密集時の描画数を減らす
    #particle dust 0 1 1 0.6 ~ ~ ~ 0.05 0.05 0.05 0 1 force
    #particle dust 0.7 1 1 0.6 ~ ~ ~ 0.05 0.05 0.05 0 1 force
    execute unless entity @e[tag=ui_temp_proj_marker,distance=..0.6] run particle dust 0 1 1 0.6 ~ ~ ~ 0.05 0.05 0.05 0 1 force
    execute unless entity @e[tag=ui_temp_proj_marker,distance=..0.6] run particle dust 0.7 1 1 0.6 ~ ~ ~ 0.05 0.05 0.05 0 1 force
    execute unless entity @e[tag=ui_temp_proj_marker,distance=..0.6] run summon marker ~ ~ ~ {Tags:["ui_temp_proj_marker"]}

# 接触判定: 非透過か液体と同じ座標なら破壊
    execute unless block ~ ~ ~ #ui:nocol run function ui:tmw/237/proj/kill
    execute if block ~ ~ ~ #ui:liq run function ui:tmw/237/proj/kill

# 移動値が無くなるまで繰り返す
    execute as @s[scores={ui_temp=1..,ui_br=1..,}] at @s run function ui:tmw/237/proj/move