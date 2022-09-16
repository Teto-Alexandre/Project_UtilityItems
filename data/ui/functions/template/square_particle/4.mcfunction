#> ui:template/square_particle/4
#
# 半径4の円形パーティクルベースを展開する
#
# @public

kill @e[tag=ui_temp_particle]

scoreboard players set $temp ui_temp 9
execute align xyz positioned ~-4.5 ~ ~-4.5 run function ui:template/square_particle/place/gen
