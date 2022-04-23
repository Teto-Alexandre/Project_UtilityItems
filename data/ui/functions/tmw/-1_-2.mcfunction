#> ui:tmw/-1_-2
#
# 致死のトーテムと冥府の墓標の専用処理区画
#
# 不死のトーテムを発動させた時のみ実行する
#
# @public

effect give @s[nbt={Inventory:[{tag:{tmw:{id:-1}}}]}] minecraft:instant_health 1 1
effect give @s[nbt={Inventory:[{tag:{tmw:{id:-1}}}]}] minecraft:regeneration 10 2
effect give @s[tag=dt] minecraft:wither 100000 4
effect give @s[tag=dt] minecraft:strength 100000 0
effect give @s[tag=dt] minecraft:speed 100000 1
effect give @s[tag=dt] minecraft:jump_boost 100000 1
effect give @s[tag=dt] minecraft:haste 100000 0

scoreboard players set @s ui_uset 0