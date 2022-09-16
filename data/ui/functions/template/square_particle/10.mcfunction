#> ui:template/square_particle/10
#
# 半径10の円形パーティクルベースを展開する
#
# @public

kill @e[tag=ui_temp_particle]

scoreboard players set $temp ui_temp 21
execute align xyz positioned ~-10.5 ~ ~-10.5 run function ui:template/square_particle/place/gen
