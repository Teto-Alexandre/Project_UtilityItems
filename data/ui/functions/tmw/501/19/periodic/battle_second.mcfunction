#
tag @s remove tmw_501_19_battle_second

#
loot give @s loot ui:single_item/tmw/264

#
execute if entity @s[tag=tmw_501_19_point_over] run say ポイントオーバーにより出撃できませんでした
execute if entity @s[tag=tmw_501_19_point_over] run scoreboard players set @s ui_tmw501_19_now_life 0
execute if entity @s[tag=tmw_501_19_point_over] run kill @s
execute if entity @s[tag=tmw_501_19_point_over] run tag @s remove tmw_501_19_point_over
