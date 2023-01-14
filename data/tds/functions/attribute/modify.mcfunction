#=====================================================================================================================
#
#   ※attributeのUUIDを使用しています※
#   1-0-0-0-0から1-0-0-0-11まで
#
#=====================================================================================================================

#現在のHP最大値を取得
#tds_hpsを今の最大値以下にする（つまりHPが今の最大値以上になることはない）
execute store result score #_ tds_hps run attribute @s minecraft:generic.max_health get 100
#scoreboard players add #_ tds_hps 1
scoreboard players operation @s tds_hps < #_ tds_hps
#最大HPは1.0f以下にならないので強制的に最大HPを1.0fにする
attribute @s minecraft:generic.max_health modifier add 1-0-0-0-11 "tds_hp" -1000 add


#現在のHP最大値を取得　→　目標値 <= 現在のHP 減らす
#                       目標値 >  現在のHP 増やす
#この繰り返しで小数点以下２桁まで二分探索を使用して精密な変更を行う
execute store result score #_ tds_hps run attribute @s minecraft:generic.max_health get 100
execute if score @s tds_hps <= #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-10 "tds_hp" -655.36 add
execute if score @s tds_hps > #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-10 "tds_hp" 655.36 add

execute store result score #_ tds_hps run attribute @s minecraft:generic.max_health get 100
execute if score @s tds_hps <= #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-F "tds_hp" -327.68 add
execute if score @s tds_hps > #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-F "tds_hp" 327.68 add

execute store result score #_ tds_hps run attribute @s minecraft:generic.max_health get 100
execute if score @s tds_hps <= #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-E "tds_hp" -163.84 add
execute if score @s tds_hps > #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-E "tds_hp" 163.84 add

execute store result score #_ tds_hps run attribute @s minecraft:generic.max_health get 100
execute if score @s tds_hps <= #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-D "tds_hp" -81.92 add
execute if score @s tds_hps > #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-D "tds_hp" 81.92 add

execute store result score #_ tds_hps run attribute @s minecraft:generic.max_health get 100
execute if score @s tds_hps <= #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-C "tds_hp" -40.96 add
execute if score @s tds_hps > #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-C "tds_hp" 40.96 add

execute store result score #_ tds_hps run attribute @s minecraft:generic.max_health get 100
execute if score @s tds_hps <= #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-B "tds_hp" -20.48 add
execute if score @s tds_hps > #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-B "tds_hp" 20.48 add

execute store result score #_ tds_hps run attribute @s minecraft:generic.max_health get 100
execute if score @s tds_hps <= #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-A "tds_hp" -10.24 add
execute if score @s tds_hps > #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-A "tds_hp" 10.24 add

execute store result score #_ tds_hps run attribute @s minecraft:generic.max_health get 100
execute if score @s tds_hps <= #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-9 "tds_hp" -5.12 add
execute if score @s tds_hps > #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-9 "tds_hp" 5.12 add

execute store result score #_ tds_hps run attribute @s minecraft:generic.max_health get 100
execute if score @s tds_hps <= #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-8 "tds_hp" -2.56 add
execute if score @s tds_hps > #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-8 "tds_hp" 2.56 add

execute store result score #_ tds_hps run attribute @s minecraft:generic.max_health get 100
execute if score @s tds_hps <= #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-7 "tds_hp" -1.28 add
execute if score @s tds_hps > #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-7 "tds_hp" 1.28 add

execute store result score #_ tds_hps run attribute @s minecraft:generic.max_health get 100
execute if score @s tds_hps <= #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-6 "tds_hp" -0.64 add
execute if score @s tds_hps > #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-6 "tds_hp" 0.64 add

execute store result score #_ tds_hps run attribute @s minecraft:generic.max_health get 100
execute if score @s tds_hps <= #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-5 "tds_hp" -0.32 add
execute if score @s tds_hps > #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-5 "tds_hp" 0.32 add

execute store result score #_ tds_hps run attribute @s minecraft:generic.max_health get 100
execute if score @s tds_hps <= #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-4 "tds_hp" -0.16 add
execute if score @s tds_hps > #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-4 "tds_hp" 0.16 add

execute store result score #_ tds_hps run attribute @s minecraft:generic.max_health get 100
execute if score @s tds_hps <= #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-3 "tds_hp" -0.08 add
execute if score @s tds_hps > #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-3 "tds_hp" 0.08 add

execute store result score #_ tds_hps run attribute @s minecraft:generic.max_health get 100
execute if score @s tds_hps <= #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-2 "tds_hp" -0.04 add
execute if score @s tds_hps > #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-2 "tds_hp" 0.04 add

execute store result score #_ tds_hps run attribute @s minecraft:generic.max_health get 100
execute if score @s tds_hps <= #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-1 "tds_hp" -0.02 add
execute if score @s tds_hps > #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-1 "tds_hp" 0.02 add

execute store result score #_ tds_hps run attribute @s minecraft:generic.max_health get 100
execute if score @s tds_hps <= #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-0 "tds_hp" -0.01 add
execute if score @s tds_hps > #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-0 "tds_hp" 0.01 add

execute store result score #_ tds_hps run attribute @s minecraft:generic.max_health get 100
execute if score @s tds_hps < #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-12 "tds_hp" -0.01 add
execute if score @s tds_hps > #_ tds_hps run attribute @s minecraft:generic.max_health modifier add 1-0-0-0-12 "tds_hp" 0.01 add


#最大値変更tick内なので回復するとバグの発生なく数値の正常化可能
effect give @s minecraft:instant_health 1 252 true
#最大値を元に戻す用のタグをつける
tag @s add tds_hps_mod


#このスコアはもう必要ないようだね
scoreboard players reset @s tds_hps