# 数値取得
    execute store result score $temp ui_temp run data get storage ui:temp tag.tmw.amount
    execute store result score $temp3 ui_temp run data get storage ui:temp tag.tmw.amount
    execute store result score $temp2 ui_temp run data get storage ui:temp tag.tmw.max

# 減算
    execute if score $temp ui_temp matches 10000.. run scoreboard players operation $temp2 ui_temp /= #100 ui_num
    execute if score $temp ui_temp matches 10000.. run scoreboard players operation $temp3 ui_temp /= #100 ui_num

#
    scoreboard players operation $temp3 ui_temp *= #100 ui_num
    scoreboard players operation $temp3 ui_temp /= $temp2 ui_temp
    scoreboard players operation $temp3 ui_temp > #5 ui_num
    scoreboard players operation $temp3 ui_temp < #95 ui_num

# 再記
    execute if score $temp ui_temp matches 10000.. run execute store result score $temp2 ui_temp run data get storage ui:temp tag.tmw.max