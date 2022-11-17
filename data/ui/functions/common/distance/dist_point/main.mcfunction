# データ化
    data modify storage ui:common temp set from entity @s Pos
    execute store result score $x1 ui_temp run data get storage ui:common temp[0] 100
    execute store result score $y1 ui_temp run data get storage ui:common temp[1] 100
    execute store result score $z1 ui_temp run data get storage ui:common temp[2] 100

    summon marker ~ ~ ~ {Tags:["ui_common_marker"]}
    data modify storage ui:common temp set from entity @e[tag=ui_common_marker,limit=1] Pos
    execute store result score $x2 ui_temp run data get storage ui:common temp[0] 100
    execute store result score $y2 ui_temp run data get storage ui:common temp[1] 100
    execute store result score $z2 ui_temp run data get storage ui:common temp[2] 100
    kill @e[tag=ui_common_marker]

# 二乗値
    scoreboard players operation $x1 ui_temp -= $x2 ui_temp
    scoreboard players operation $y1 ui_temp -= $y2 ui_temp
    scoreboard players operation $z1 ui_temp -= $z2 ui_temp
    scoreboard players operation $x1 ui_temp *= $x1 ui_temp
    scoreboard players operation $y1 ui_temp *= $y1 ui_temp
    scoreboard players operation $z1 ui_temp *= $z1 ui_temp
    scoreboard players operation $x1 ui_temp += $y1 ui_temp
    scoreboard players operation $x1 ui_temp += $z1 ui_temp

## スコア化
    scoreboard players operation $input ui_temp = $x1 ui_temp
    scoreboard players operation $result ui_temp = $x1 ui_temp
    scoreboard players set $temp ui_temp 1
    execute if score $result ui_temp > $temp ui_temp run function ui:common/distance/sqrt/lp