#> ui:misc/act/use_crossbow
#
# クロスボウ射撃時に実行、スニークキーを押しているかで分岐
#
# アイテムの検知に便利なタグを付与する
#
# 利用時はアイテムにNBTタグ {tmw:{enableUse:1}} を付けて
#
# @public

# どっちの手に装備してるやつ使った？
    execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:crossbow"}] run scoreboard players set $check ui_temp 2
    execute if data entity @s SelectedItem{id:"minecraft:crossbow"} run scoreboard players set $check ui_temp 1

# enableタグ照合
    execute if score $check ui_temp matches 1 store result score $temp ui_temp run data get entity @s SelectedItem.tag.tmw.enableUse
    execute if score $check ui_temp matches 2 store result score $temp ui_temp run data get entity @s Inventory.[{Slot:-106b}].tag.tmw.enableUse

# 照合データをもとにタグ付けを行う
    execute if score $temp ui_temp matches 1 run function ui:misc/act/use_crossbow.checked

#
    scoreboard players set @s ui_usec2_tc 6