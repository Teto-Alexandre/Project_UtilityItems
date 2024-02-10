#> ui:misc/permanent_effect
#
# 常に実行されるコマンド
#
# 永続エフェクトを司る
#
# @public

#最大HP操作
execute as @a[scores={ui_hp_plus=0..}] unless score @s ui_hp_plusc = @s ui_hp_plus run function ui:misc/hp_plus
execute as @e[type=!#ui:unhurtable] unless score @s ui_hp_calc = @s ui_hp run function ui:misc/attribute

#天使の祝福(tmw406)
effect give @a[tag=tmw406] luck 1 0 true