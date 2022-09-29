# 射程うんぬん
    scoreboard players remove @s ui_temp 10
    scoreboard players remove @s ui_br 1

# 移動と反射コモン
    teleport @s ^ ^ ^0.6

# 見た目
    execute if score @s ui_bpart matches 1 run function ui:tmw/237/particle_unit/move/1
    execute if score @s ui_bpart matches 2 run function ui:tmw/237/particle_unit/move/2
    execute if score @s ui_bpart matches 3 run function ui:tmw/237/particle_unit/move/3
    execute if score @s ui_bpart matches 4 run function ui:tmw/237/particle_unit/move/4
    execute if score @s ui_bpart matches 8 run function ui:tmw/237/particle_unit/move/8

# 移動値が無くなるまで繰り返す
    execute as @s[scores={ui_temp=10..,ui_br=1..}] at @s run function ui:tmw/237/particle_unit/move