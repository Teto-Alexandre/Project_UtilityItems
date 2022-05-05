#重力加速度の疑似再現

# 加速度減少
    scoreboard players remove $temp ui_bcp 1
    teleport @s ~ ~-0.1 ~ ~ ~

# 加速度の分だけループ
    execute if score $temp ui_bcp matches 1.. at @s run function ui:common/projectile/gravity