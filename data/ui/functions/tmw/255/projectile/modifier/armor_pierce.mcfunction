# armor_pierce の追加効果
    scoreboard players operation $bypass_armor ui_temp += $level ui_temp
    execute if score $level ui_temp matches 500.. at @e[tag=ui_temp_this] run particle smoke ~ ~ ~ 0.3 0.3 0.3 0 3 force
    execute if score $level ui_temp matches 500.. at @e[tag=ui_temp_this] run particle block iron_bars ~ ~0.5 ~ 0.3 0.3 0.3 0 5 force
    execute if score $level ui_temp matches 500.. at @e[tag=ui_temp_this] run playsound item.trident.hit neutral @a ~ ~ ~ 0.8 1.2 0