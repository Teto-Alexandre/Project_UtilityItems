#> ui:template/square_particle/6
#
# 半径6の円形パーティクルベースを展開する
#
# @public

kill @e[tag=ui_temp_particle]

scoreboard players set $temp ui_temp 13
execute align xyz positioned ~-6.5 ~ ~-6.5 run function ui:template/square_particle/place/gen
