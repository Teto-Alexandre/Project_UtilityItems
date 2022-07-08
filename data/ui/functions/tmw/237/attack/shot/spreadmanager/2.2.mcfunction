# 2.横列n-way拡散

# 弾を出す
    function ui:tmw/237/attack/shot/fire_straight

# ショットガン.lp
    scoreboard players remove $multishot ui_temp 1
    scoreboard players operation $rotation ui_temp += $spread ui_temp
    scoreboard players add $rotation ui_temp 1800
    scoreboard players operation $rotation ui_temp %= #3600 ui_num
    execute as @e[tag=ui_marker] store result entity @s Rotation[0] float 0.1 run scoreboard players remove $rotation ui_temp 1800
    execute if score $multishot ui_temp matches 1.. at @e[tag=ui_marker] run function ui:tmw/237/attack/shot/spreadmanager/2.2