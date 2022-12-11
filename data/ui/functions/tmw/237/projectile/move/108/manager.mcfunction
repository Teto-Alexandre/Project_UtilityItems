#これです
    tag @s add ui_temp_this
#
    execute unless score @s ui_is matches 30.. run function ui:tmw/237/projectile/move/108/before
#当たり判定拡張
    execute if score @s ui_is matches 30.. run function ui:tmw/237/projectile/move/108/after
#
    tag @s remove ui_temp_this