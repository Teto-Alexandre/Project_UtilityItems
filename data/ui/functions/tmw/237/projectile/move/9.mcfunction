#これです
    #tag @s add ui_temp_this
#座標調整
    #teleport @s ^ ^ ^
#当たり判定拡張
#見た目
    execute if score $team ui_temp matches 1 run function ui:tmw/237/projectile/move/9/1
    execute if score $team ui_temp matches 2 run function ui:tmw/237/projectile/move/9/2
    execute if score $team ui_temp matches 3 run function ui:tmw/237/projectile/move/9/3
    execute if score $team ui_temp matches 4 run function ui:tmw/237/projectile/move/9/4
#
    #tag @s remove ui_temp_this