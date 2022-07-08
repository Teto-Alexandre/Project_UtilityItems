# 2.横列n-way拡散

# 加速
    scoreboard players operation $speed.add ui_temp += $speed.plus ui_temp
    scoreboard players operation $range ui_temp += $speed.plus ui_temp

# 弾を出す
    function ui:tmw/237/attack/shot/fire_straight

# ショットガン.lp
    scoreboard players remove $multishot ui_temp 1
    scoreboard players operation $rotation ui_temp -= $spread ui_temp
    execute if score $rotation ui_temp matches ..-991 run scoreboard players set $rotation ui_temp -900
    execute if score $rotation ui_temp matches 901.. run scoreboard players set $rotation ui_temp 900
    execute as @e[tag=ui_marker] store result entity @s Rotation[1] float 0.1 run scoreboard players get $rotation ui_temp
    execute if score $multishot ui_temp matches 1.. at @e[tag=ui_marker] run function ui:tmw/237/attack/shot/spreadmanager/3.2