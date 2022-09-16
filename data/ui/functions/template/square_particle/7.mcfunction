#> ui:template/square_particle/7
#
# 半径7の円形パーティクルベースを展開する
#
# @public

kill @e[tag=ui_temp_particle]

scoreboard players set $temp ui_temp 15
execute align xyz positioned ~-7.5 ~ ~-7.5 run function ui:template/square_particle/place/gen
