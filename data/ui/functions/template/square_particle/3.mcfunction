#> ui:template/square_particle/3
#
# 半径3の円形パーティクルベースを展開する
#
# @public

kill @e[tag=ui_temp_particle]

scoreboard players set $temp ui_temp 7
execute align xyz positioned ~-3.5 ~ ~-3.5 run function ui:template/square_particle/place/gen
