#
    scoreboard players set $constant ui_temp 0

# 魔弾ADS
    execute if score $constantid ui_temp matches 1 run function ui:tmw/255/player/crossbow/constant/id/upper/1
