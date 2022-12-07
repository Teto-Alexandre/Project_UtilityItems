# 経験値が0以上ならレベルを上げる、上げたことと最終レベルを記録
    execute store result score $level ui_temp run scoreboard players add @s ui_lvl_craft_lvl 1

# 現在のレベルから次の必要経験値を計算する [ (lv*1.5 + 10)*lv + 100 ]
    scoreboard players operation $temp1 ui_temp = $level ui_temp
    scoreboard players operation $temp1 ui_temp += #100 ui_num
    scoreboard players operation $temp1 ui_temp *= $level ui_temp
    scoreboard players add $temp1 ui_temp 10000
    execute if score @s ui_lvl_craft_lvl matches 1000 run scoreboard players set $temp1 ui_temp 2147483647

# 10の倍数のレベルになったことを検知してカウントアップ
    scoreboard players operation $temp2 ui_temp = $level ui_temp
    scoreboard players operation $temp2 ui_temp %= #10 ui_num
    execute if score $temp2 ui_temp matches 0 run scoreboard players add $temp3 ui_temp 1

# 経験値から次の必要経験値を減算する
    scoreboard players operation @s ui_lvl_craft_exp -= $temp1 ui_temp

# 経験値が余ってるならループ
    execute if score @s ui_lvl_craft_exp matches 0.. run function ui:level/craft/exp.lp