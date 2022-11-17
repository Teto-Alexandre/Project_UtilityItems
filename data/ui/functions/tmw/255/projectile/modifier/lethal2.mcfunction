# 半分の値だけ追加ダメージ
    scoreboard players operation $level ui_temp /= #2 ui_num
    scoreboard players operation $damage ui_temp += $level ui_temp
    execute at @e[tag=ui_temp_this] run particle dust 1 0.8 0.5 0.8 ~ ~ ~ 0.3 0.5 0.3 0 10 force
    execute at @e[tag=ui_temp_this] run playsound entity.player.attack.strong neutral @a ~ ~ ~ 1 1 0