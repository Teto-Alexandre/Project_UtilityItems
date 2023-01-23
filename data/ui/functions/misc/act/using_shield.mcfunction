#> ui:misc/act/using_shield
#
# 盾を構えている時に実行、スニークキーを押しているかで分岐
#
# アイテムの検知に便利なタグを付与する
#
# @public

# どっちの手に装備してるやつ使った？
    execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:shield"}] run scoreboard players set $check ui_temp 2
    execute if data entity @s SelectedItem{id:"minecraft:shield"} run scoreboard players set $check ui_temp 1

# 付与
    execute if score $check ui_temp matches 1 as @s[scores={ui_st=..0}] run tag @s add tmw_shield_mh_n
    execute if score $check ui_temp matches 1 as @s[scores={ui_st=1..}] run tag @s add tmw_shield_mh_s
    execute if score $check ui_temp matches 2 as @s[scores={ui_st=..0}] run tag @s add tmw_shield_oh_n
    execute if score $check ui_temp matches 2 as @s[scores={ui_st=1..}] run tag @s add tmw_shield_oh_s
    execute if score $check ui_temp matches 1 run tag @s add tmw_shield_mh
    execute if score $check ui_temp matches 2 run tag @s add tmw_shield_oh
    execute as @s[scores={ui_st=..0}] run tag @s add tmw_shield_n
    execute as @s[scores={ui_st=1..}] run tag @s add tmw_shield_s
    tag @s add tmw_shield

#
    advancement revoke @s only ui:system/shield