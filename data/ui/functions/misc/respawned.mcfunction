#> ui:misc/respawned
#
# 死亡後にリスポーンしたタイミングで実行
#
# @public

# 復活直後にHP回復（死にかけでリスポーンするバグ対策）
effect give @s instant_health 1 10 true
scoreboard players set @s ui_hp 0
tag @s remove tmw_401_5

# 始動スコアリセット
scoreboard players set @s ui_dc_r 0