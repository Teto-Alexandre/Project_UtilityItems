#> ui:template/circle_particle/2.5
#
# 半径2.5の円形パーティクルベースを展開する
#
# @public

kill @e[tag=ui_temp_particle]

scoreboard players set $temp ui_temp 6
execute align xyz positioned ~-3 ~ ~-3 run function ui:template/circle_particle/place/gen

kill @e[tag=ui_temp_particle,distance=2.6..]