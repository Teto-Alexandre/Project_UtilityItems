# ターゲティング - ターゲットが消滅したならその場で爆発
scoreboard players operation $obj_id ui_temp = @s ui_gpc
execute as @e[distance=..100] if score @s ui_obj_id = $obj_id ui_temp unless entity @s[gamemode=spectator] store success score $temp ui_temp at @s run summon minecraft:area_effect_cloud ~ ~1 ~ {Tags:["tmw_242_mis3"],Age:1}

# 爆発
execute unless entity @e[tag=tmw_242_mis3] run tag @s add ex
    #反応距離に応じて離れた距離でも爆発するようになる
    execute at @s if entity @e[tag=tmw_242_mis3,distance=..2] run tag @s add ex
    execute at @s[scores={ui_bt=3}] if entity @e[tag=tmw_242_mis3,distance=..3] run tag @s add ex
    execute at @s[scores={ui_bt=4}] if entity @e[tag=tmw_242_mis3,distance=..4] run tag @s add ex
    execute at @s[scores={ui_bt=5}] if entity @e[tag=tmw_242_mis3,distance=..5] run tag @s add ex
    execute at @s[scores={ui_bt=6}] if entity @e[tag=tmw_242_mis3,distance=..6] run tag @s add ex
    execute at @s[scores={ui_bt=7}] if entity @e[tag=tmw_242_mis3,distance=..7] run tag @s add ex
    execute at @s[scores={ui_bt=8}] if entity @e[tag=tmw_242_mis3,distance=..8] run tag @s add ex
    execute at @s[scores={ui_bt=9}] if entity @e[tag=tmw_242_mis3,distance=..9] run tag @s add ex
    execute at @s[scores={ui_bt=10}] if entity @e[tag=tmw_242_mis3,distance=..10] run tag @s add ex
    execute at @s[scores={ui_bt=15}] if entity @e[tag=tmw_242_mis3,distance=..15] run tag @s add ex
    execute at @s[scores={ui_bt=20}] if entity @e[tag=tmw_242_mis3,distance=..20] run tag @s add ex
scoreboard players remove @s ui_br 1
tag @s[scores={ui_br=..0}] add ex

# データ抽出
data modify storage ui:weapon temp.Motion set from entity @s Motion
data modify storage ui:weapon temp.Pos set from entity @s Pos

# 移動経路作成
    ## 壁接触判定
    execute unless block ~-0.2 ~ ~ #ui:nocol run tag @s add ex
    execute unless block ~0.2 ~ ~ #ui:nocol run tag @s add ex
    execute unless block ~ ~-0.1 ~ #ui:nocol run tag @s add ex
    execute unless block ~ ~1.0 ~ #ui:nocol run tag @s add ex
    execute unless block ~ ~ ~-0.2 #ui:nocol run tag @s add ex
    execute unless block ~ ~ ~0.2 #ui:nocol run tag @s add ex
    ## 重力を差し引いた現在の移動速度を初期値として加算
    execute store result score $x2 ui_temp run data get storage ui:weapon temp.Motion.[0] 1000
    execute store result score $y2 ui_temp run data get storage ui:weapon temp.Motion.[1] 950
    execute store result score $z2 ui_temp run data get storage ui:weapon temp.Motion.[2] 1000
    scoreboard players add $y2 ui_temp 70
    scoreboard players operation $x2 ui_temp *= @s ui_bm
    scoreboard players operation $x2 ui_temp /= #100 ui_num
    scoreboard players operation $y2 ui_temp *= @s ui_bm
    scoreboard players operation $y2 ui_temp /= #100 ui_num
    scoreboard players operation $z2 ui_temp *= @s ui_bm
    scoreboard players operation $z2 ui_temp /= #100 ui_num
    ## ターゲット方向へ加速
    execute at @s facing entity @e[tag=tmw_242_mis3] feet run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:["tmw_242_mis2"],Age:1}
    execute as @e[tag=tmw_242_mis2,sort=nearest,limit=1] store result score $x3 ui_temp run data get entity @s Pos.[0] 1000
    execute as @e[tag=tmw_242_mis2,sort=nearest,limit=1] store result score $y3 ui_temp run data get entity @s Pos.[1] 1000
    execute as @e[tag=tmw_242_mis2,sort=nearest,limit=1] store result score $z3 ui_temp run data get entity @s Pos.[2] 1000
    execute store result score $x1 ui_temp run data get storage ui:weapon temp.Pos.[0] 1000
    execute store result score $y1 ui_temp run data get storage ui:weapon temp.Pos.[1] 1000
    execute store result score $z1 ui_temp run data get storage ui:weapon temp.Pos.[2] 1000
    scoreboard players operation $x3 ui_temp -= $x1 ui_temp
    scoreboard players operation $y3 ui_temp -= $y1 ui_temp
    scoreboard players operation $z3 ui_temp -= $z1 ui_temp
    scoreboard players operation $x3 ui_temp *= @s ui_bm_temp
    scoreboard players operation $x3 ui_temp /= #100 ui_num
    scoreboard players operation $y3 ui_temp *= @s ui_bm_temp
    scoreboard players operation $y3 ui_temp /= #100 ui_num
    scoreboard players operation $z3 ui_temp *= @s ui_bm_temp
    scoreboard players operation $z3 ui_temp /= #100 ui_num
    scoreboard players operation $x2 ui_temp += $x3 ui_temp
    scoreboard players operation $y2 ui_temp += $y3 ui_temp
    scoreboard players operation $z2 ui_temp += $z3 ui_temp
    ## 新たな速度を書き込む
    execute store result storage ui:weapon temp.Motion.[0] double 0.001 run scoreboard players get $x2 ui_temp
    execute store result storage ui:weapon temp.Motion.[1] double 0.001 run scoreboard players get $y2 ui_temp
    execute store result storage ui:weapon temp.Motion.[2] double 0.001 run scoreboard players get $z2 ui_temp
    data modify entity @s Motion set from storage ui:weapon temp.Motion

# キャッシュクリア
kill @e[tag=tmw_242_mis2]
kill @e[tag=tmw_242_mis3]
data remove storage ui:weapon temp