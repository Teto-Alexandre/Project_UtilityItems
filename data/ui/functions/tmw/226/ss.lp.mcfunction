#
    execute store result score temp ui_temp run data get entity @s Inventory[{Slot:35b}].tag.tmw.amount
    execute if score temp ui_temp matches 1.. run function ui:tmw/226/ss.lp2