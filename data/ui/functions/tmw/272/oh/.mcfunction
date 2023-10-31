# アイテムのID参照 ( -1:開始ツール, 1:アイテム )
execute store result score $type ui_temp run data get entity @s Inventory[{Slot:-106b}].tag.tmw.type

#
execute if score $type ui_temp matches 1 run function ui:tmw/272/oh/1/
execute if score $type ui_temp matches 2 run function ui:tmw/272/oh/2/
