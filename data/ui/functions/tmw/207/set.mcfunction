#=======================================================================================================

execute store result entity @s Motion[0] double 0.01 run data get entity @s Motion[0] 150
execute store result entity @s Motion[1] double 0.01 run data get entity @s Motion[1] 150
execute store result entity @s Motion[2] double 0.01 run data get entity @s Motion[2] 150

tag @s add tmw_207_1

#テスト用
#say 強化弓で矢を発射したよ！

#=======================================================================================================
