# 射程うんぬん
    scoreboard players remove @s ui_temp 10
    scoreboard players remove @s ui_br 1

# 移動と反射コモン
    summon marker ~ ~ ~ {Tags:["ui_temp_marker"]}
    execute store result score $y1 ui_temp run data get entity @s Pos[1] 10
    scoreboard players operation $y2 ui_temp = @s ui_br
    scoreboard players operation $y2 ui_temp *= #5 ui_num
    execute store result entity @e[tag=ui_temp_marker,limit=1] Pos[1] double 0.1 run scoreboard players operation $y1 ui_temp += $y2 ui_temp

# マーカーに実行
    execute at @e[tag=ui_temp_marker] run function ui:tmw/237/missile/move.marker

# 移動値が無くなるまで繰り返す
    execute as @s[scores={ui_temp=10..,ui_br=1..},tag=!ui_proj_common_nocol,tag=!ui_proj_common_hit,tag=!ui_temp_col] at @s run function ui:tmw/237/missile/move