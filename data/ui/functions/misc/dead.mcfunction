#> ui:misc/dead
#
# 死亡したタイミングで実行
#
# @public

# カラクラ銃を持っているなら
execute if entity @s[scores={ui_tmw_id_old=237}] run function ui:misc/dead/tmw237/dead

# もう一回死亡しないように状態異常リセット
scoreboard players reset @s tds_fire
scoreboard players reset @s tds_cold
scoreboard players reset @s tds_acid
scoreboard players reset @s tds_amethyst
scoreboard players reset @s tds_amethyst_t
scoreboard players set @s tds_hps 9999999

# 始動スコアリセット
scoreboard players set @s ui_dc 0

# リスポーンの始動スコア
scoreboard players set @s ui_dc_r 1