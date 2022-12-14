# ファイアシークエンスの進度を計算する
execute store result score $time ui_temp run time query gametime
scoreboard players operation $firetime.temp ui_temp = $time ui_temp
scoreboard players operation $firetime.temp ui_temp -= $firetime ui_temp