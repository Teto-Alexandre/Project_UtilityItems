# 数値取得
    execute store result score $temp ui_temp run experience query @s levels
    execute store result score $temp2 ui_temp run experience query @s points

# 16以下の時
    execute if score $temp ui_temp matches ..16 run scoreboard players operation $temp3 ui_temp = $temp ui_temp
    execute if score $temp ui_temp matches ..16 run scoreboard players operation $temp3 ui_temp *= $temp ui_temp
    execute if score $temp ui_temp matches ..16 run scoreboard players operation $temp4 ui_temp = $temp ui_temp
    execute if score $temp ui_temp matches ..16 run scoreboard players operation $temp4 ui_temp *= #6 ui_num
    execute if score $temp ui_temp matches ..16 run scoreboard players operation $temp4 ui_temp += $temp3 ui_temp
    
# 31以下の時
    execute if score $temp ui_temp matches 17..31 run scoreboard players operation $temp3 ui_temp = $temp ui_temp
    execute if score $temp ui_temp matches 17..31 run scoreboard players operation $temp3 ui_temp *= #81 ui_num
    execute if score $temp ui_temp matches 17..31 run scoreboard players operation $temp4 ui_temp = $temp ui_temp
    execute if score $temp ui_temp matches 17..31 run scoreboard players operation $temp4 ui_temp *= #5 ui_num
    execute if score $temp ui_temp matches 17..31 run scoreboard players operation $temp4 ui_temp *= $temp ui_temp
    execute if score $temp ui_temp matches 17..31 run scoreboard players operation $temp4 ui_temp -= $temp3 ui_temp
    execute if score $temp ui_temp matches 17..31 run scoreboard players operation $temp4 ui_temp /= #2 ui_num
    execute if score $temp ui_temp matches 17..31 run scoreboard players operation $temp4 ui_temp += #360 ui_num

# 32以上の時
    execute if score $temp ui_temp matches 32.. run scoreboard players operation $temp5 ui_temp = $temp ui_temp
    execute if score $temp ui_temp matches 32.. run scoreboard players operation $temp5 ui_temp %= #2 ui_num
    execute if score $temp ui_temp matches 32.. run scoreboard players operation $temp6 ui_temp = $temp ui_temp
    execute if score $temp ui_temp matches 32.. if score $temp5 ui_temp matches 0 run scoreboard players operation $temp6 ui_temp /= #2 ui_num
    execute if score $temp ui_temp matches 32.. run scoreboard players operation $temp3 ui_temp = #325 ui_num
    execute if score $temp ui_temp matches 32.. run scoreboard players operation $temp4 ui_temp = $temp ui_temp
    execute if score $temp ui_temp matches 32.. run scoreboard players operation $temp4 ui_temp *= #9 ui_num
    execute if score $temp ui_temp matches 32.. run scoreboard players operation $temp4 ui_temp -= $temp3 ui_temp
    execute if score $temp ui_temp matches 32.. if score $temp5 ui_temp matches 1 run scoreboard players operation $temp4 ui_temp /= #2 ui_num
    execute if score $temp ui_temp matches 32.. run scoreboard players operation $temp4 ui_temp *= $temp6 ui_temp
    execute if score $temp ui_temp matches 32.. run scoreboard players operation $temp4 ui_temp += #2220 ui_num

# 共通
    scoreboard players operation $temp4 ui_temp += $temp2 ui_temp
    #tellraw @a {"score":{"name":"$temp4","objective":"ui_temp"}}