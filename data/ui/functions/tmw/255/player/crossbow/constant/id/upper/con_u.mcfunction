#
    scoreboard players set $constant ui_temp 0

# 魔弾ADS
    execute if score $constantid ui_temp matches 1 run function ui:tmw/255/player/crossbow/constant/id/upper/1
# グリッチ
    execute if score $constantid ui_temp matches 2 run function ui:tmw/255/player/crossbow/constant/id/upper/2/
# デュランダル
    execute if score $constantid ui_temp matches 3 run function ui:tmw/255/player/crossbow/constant/id/upper/3/
