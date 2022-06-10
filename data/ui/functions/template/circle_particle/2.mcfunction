#> ui:template/circle_particle/2
#
# 半径2の円形パーティクルベースを展開する
#
# @public

kill @e[tag=ui_temp_particle]

scoreboard players set $temp ui_temp 5
execute align xyz positioned ~-2.5 ~ ~-2.5 run function ui:template/circle_particle/place/gen

kill @e[tag=ui_temp_particle,distance=2.1..]