# 弾(ダイヤモンド)をインベントリから消す: 成功したらスコア加算
    execute store success score $temp ui_temp run clear @s diamond
    scoreboard players operation $ammo ui_temp += $temp ui_temp

# $ammo = $ammo.max になるまで.lp
    execute if score $ammo ui_temp < $ammo.max ui_temp if score $temp ui_temp matches 1 run function ui:tmw/235/oh/reload.lp