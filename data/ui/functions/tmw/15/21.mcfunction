# 頭に装備するアイテム

#
    execute if data entity @s Inventory[{Slot:103b}] run playsound block.dispenser.fail player @a ~ ~ ~ 0.8 1 0
    execute unless data entity @s Inventory[{Slot:103b}] run function ui:tmw/15/21.1

# 発動成功
    scoreboard players set $success ui_temp 1