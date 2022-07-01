# 弾(ネオンカートリッジ)をインベントリから消す: 成功したらスコア加算
    execute unless score $ammo ui_world matches 1 store success score $temp ui_temp run clear @s iron_ingot{CustomModelData:211006} 1
    execute if score $ammo ui_world matches 1 run scoreboard players set $temp ui_temp 1
    scoreboard players operation $ammo ui_temp += $temp ui_temp

# $ammo = $ammo.max になるまで.lp
    execute if score $ammo ui_temp < $ammo.max ui_temp if score $temp ui_temp matches 1 run function ui:tmw/235/reload.lp