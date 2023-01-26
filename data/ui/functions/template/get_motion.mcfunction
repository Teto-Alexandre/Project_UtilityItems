# 逐次更新型の更新

#
execute store result score $x ui_temp run data get entity @s Motion[0] 10000
scoreboard players operation $x ui_temp *= $x ui_temp
execute store result score $y ui_temp run data get entity @s Motion[1] 10000
scoreboard players add $y ui_temp 785
scoreboard players operation $y ui_temp *= $y ui_temp
execute store result score $z ui_temp run data get entity @s Motion[2] 10000
scoreboard players operation $z ui_temp *= $z ui_temp

#
scoreboard players operation $x ui_temp += $y ui_temp
scoreboard players operation $x ui_temp += $z ui_temp

#
data merge storage ui:common {input:{Mode:"sqrt",Var:1}}
execute store result storage ui:common input.Var int 1 run scoreboard players get $x ui_temp
function ui:common/distance

## $Return ui_temp に結果出力
