#> ui:template/square_particle/4.5
#
# 半径4.5の円形パーティクルベースを展開する
#
# @public

kill @e[tag=ui_temp_particle]

scoreboard players set $temp ui_temp 10
execute align xyz positioned ~-5 ~ ~-5 run function ui:template/square_particle/place/gen
