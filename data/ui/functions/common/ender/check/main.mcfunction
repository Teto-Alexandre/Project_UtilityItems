# スロットがカラになったのを検知する#処理終了時になら何もしない
    scoreboard players set $slot ui_temp -1

# 各スロットにアイテムが入っているなら後ろのナンバーから順にセット
    #execute unless data entity @s EnderItems[{Slot:0b}] run scoreboard players set $slot ui_temp 0
    execute unless data entity @s EnderItems[{Slot:1b}] run scoreboard players set $slot ui_temp 1
    execute unless data entity @s EnderItems[{Slot:2b}] run scoreboard players set $slot ui_temp 2
    execute unless data entity @s EnderItems[{Slot:3b}] run scoreboard players set $slot ui_temp 3
    execute unless data entity @s EnderItems[{Slot:4b}] run scoreboard players set $slot ui_temp 4
    execute unless data entity @s EnderItems[{Slot:5b}] run scoreboard players set $slot ui_temp 5
    execute unless data entity @s EnderItems[{Slot:6b}] run scoreboard players set $slot ui_temp 6
    execute unless data entity @s EnderItems[{Slot:7b}] run scoreboard players set $slot ui_temp 7
    execute unless data entity @s EnderItems[{Slot:8b}] run scoreboard players set $slot ui_temp 8
    execute unless data entity @s EnderItems[{Slot:9b}] run scoreboard players set $slot ui_temp 9
    execute unless data entity @s EnderItems[{Slot:10b}] run scoreboard players set $slot ui_temp 10
    execute unless data entity @s EnderItems[{Slot:11b}] run scoreboard players set $slot ui_temp 11
    execute unless data entity @s EnderItems[{Slot:12b}] run scoreboard players set $slot ui_temp 12
    execute unless data entity @s EnderItems[{Slot:13b}] run scoreboard players set $slot ui_temp 13
    execute unless data entity @s EnderItems[{Slot:14b}] run scoreboard players set $slot ui_temp 14
    execute unless data entity @s EnderItems[{Slot:15b}] run scoreboard players set $slot ui_temp 15
    execute unless data entity @s EnderItems[{Slot:16b}] run scoreboard players set $slot ui_temp 16
    execute unless data entity @s EnderItems[{Slot:17b}] run scoreboard players set $slot ui_temp 17
    execute unless data entity @s EnderItems[{Slot:18b}] run scoreboard players set $slot ui_temp 18
    execute unless data entity @s EnderItems[{Slot:19b}] run scoreboard players set $slot ui_temp 19
    execute unless data entity @s EnderItems[{Slot:20b}] run scoreboard players set $slot ui_temp 20
    execute unless data entity @s EnderItems[{Slot:21b}] run scoreboard players set $slot ui_temp 21
    execute unless data entity @s EnderItems[{Slot:22b}] run scoreboard players set $slot ui_temp 22
    execute unless data entity @s EnderItems[{Slot:23b}] run scoreboard players set $slot ui_temp 23
    execute unless data entity @s EnderItems[{Slot:24b}] run scoreboard players set $slot ui_temp 24
    execute unless data entity @s EnderItems[{Slot:25b}] run scoreboard players set $slot ui_temp 25
    execute unless data entity @s EnderItems[{Slot:26b}] run scoreboard players set $slot ui_temp 26

# 音
    execute if score $slot ui_temp matches 1.. run playsound block.note_block.hat block @a ~ ~ ~ 1 1 0