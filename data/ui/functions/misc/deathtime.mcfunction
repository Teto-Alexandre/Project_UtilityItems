#> ui:misc/deathtime
#
# 死亡後にリスポーンしたタイミングで実行
#
# @public

#死んだときに実行する奴全般
execute as @s run function tds:death_outer
#復活直後にHP回復（死にかけでリスポーンするバグ対策）
effect give @s instant_health 1 10 true
effect give @s resistance 5 3 false
scoreboard players set @s ui_hp 0
tag @s remove tmw_401_5

#始動スコアリセット
scoreboard players set @s ui_dc 0