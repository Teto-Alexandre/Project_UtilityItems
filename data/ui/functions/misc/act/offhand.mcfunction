#> ui:misc/act/offhand
#
# オフハンド持ち替え時に実行、スニークキーを押しているかで分岐
#
# アイテムの検知に便利なタグを付与する
#
# 利用時はアイテムにNBTタグ {tmw:{enableF:1}} を付けて
#
# 処理終了時にアイテムはメインハンドに移動することに注意
#
# @public

# オフハンドアイテムのenableタグ照合
    execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:-106b}].tag.tmw.enableF

# オフハンドアイテムにアイテムidがあるならタグ付けとメインハンド再帰を行う
    execute if score $temp ui_temp matches 1 run function ui:misc/act/offhand.recall