# 計算
    
#
    execute store result score $scope ui_temp run data get entity @s Effects.[0].Amplifier
#
    scoreboard players add $scope ui_temp 1
    scoreboard players operation $scope ui_temp *= #300 ui_num
    scoreboard players operation $spread ui_temp -= $scope ui_temp