# オフハンドアイテムのenableタグ照合
    execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:-106b}].tag.tmw.enableF

# オフハンドアイテムにアイテムidがあるならタグ付けとメインハンド再帰を行う
    execute if score $temp ui_temp matches 1 run function ui:misc/act/offhand.recall