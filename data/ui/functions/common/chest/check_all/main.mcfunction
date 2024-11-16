# スロットがカラになったのを検知する#処理終了時になら何もしない
    scoreboard players set $slot ui_temp -1

# 各スロットにアイテムが入っているなら後ろのナンバーから順にセット
    execute unless data block ~ ~ ~ Items[{Slot:0b}] unless data storage ui:common input.exclusion[{Slot:0}] run scoreboard players set $slot ui_temp 0
    execute unless data block ~ ~ ~ Items[{Slot:1b}] unless data storage ui:common input.exclusion[{Slot:1}] run scoreboard players set $slot ui_temp 1
    execute unless data block ~ ~ ~ Items[{Slot:2b}] unless data storage ui:common input.exclusion[{Slot:2}] run scoreboard players set $slot ui_temp 2
    execute unless data block ~ ~ ~ Items[{Slot:3b}] unless data storage ui:common input.exclusion[{Slot:3}] run scoreboard players set $slot ui_temp 3
    execute unless data block ~ ~ ~ Items[{Slot:4b}] unless data storage ui:common input.exclusion[{Slot:4}] run scoreboard players set $slot ui_temp 4
    execute unless data block ~ ~ ~ Items[{Slot:5b}] unless data storage ui:common input.exclusion[{Slot:5}] run scoreboard players set $slot ui_temp 5
    execute unless data block ~ ~ ~ Items[{Slot:6b}] unless data storage ui:common input.exclusion[{Slot:6}] run scoreboard players set $slot ui_temp 6
    execute unless data block ~ ~ ~ Items[{Slot:7b}] unless data storage ui:common input.exclusion[{Slot:7}] run scoreboard players set $slot ui_temp 7
    execute unless data block ~ ~ ~ Items[{Slot:8b}] unless data storage ui:common input.exclusion[{Slot:8}] run scoreboard players set $slot ui_temp 8
    execute unless data block ~ ~ ~ Items[{Slot:9b}] unless data storage ui:common input.exclusion[{Slot:9}] run scoreboard players set $slot ui_temp 9
    execute unless data block ~ ~ ~ Items[{Slot:10b}] unless data storage ui:common input.exclusion[{Slot:10}] run scoreboard players set $slot ui_temp 10
    execute unless data block ~ ~ ~ Items[{Slot:11b}] unless data storage ui:common input.exclusion[{Slot:11}] run scoreboard players set $slot ui_temp 11
    execute unless data block ~ ~ ~ Items[{Slot:12b}] unless data storage ui:common input.exclusion[{Slot:12}] run scoreboard players set $slot ui_temp 12
    execute unless data block ~ ~ ~ Items[{Slot:13b}] unless data storage ui:common input.exclusion[{Slot:13}] run scoreboard players set $slot ui_temp 13
    execute unless data block ~ ~ ~ Items[{Slot:14b}] unless data storage ui:common input.exclusion[{Slot:14}] run scoreboard players set $slot ui_temp 14
    execute unless data block ~ ~ ~ Items[{Slot:15b}] unless data storage ui:common input.exclusion[{Slot:15}] run scoreboard players set $slot ui_temp 15
    execute unless data block ~ ~ ~ Items[{Slot:16b}] unless data storage ui:common input.exclusion[{Slot:16}] run scoreboard players set $slot ui_temp 16
    execute unless data block ~ ~ ~ Items[{Slot:17b}] unless data storage ui:common input.exclusion[{Slot:17}] run scoreboard players set $slot ui_temp 17
    execute unless data block ~ ~ ~ Items[{Slot:18b}] unless data storage ui:common input.exclusion[{Slot:18}] run scoreboard players set $slot ui_temp 18
    execute unless data block ~ ~ ~ Items[{Slot:19b}] unless data storage ui:common input.exclusion[{Slot:19}] run scoreboard players set $slot ui_temp 19
    execute unless data block ~ ~ ~ Items[{Slot:20b}] unless data storage ui:common input.exclusion[{Slot:20}] run scoreboard players set $slot ui_temp 20
    execute unless data block ~ ~ ~ Items[{Slot:21b}] unless data storage ui:common input.exclusion[{Slot:21}] run scoreboard players set $slot ui_temp 21
    execute unless data block ~ ~ ~ Items[{Slot:22b}] unless data storage ui:common input.exclusion[{Slot:22}] run scoreboard players set $slot ui_temp 22
    execute unless data block ~ ~ ~ Items[{Slot:23b}] unless data storage ui:common input.exclusion[{Slot:23}] run scoreboard players set $slot ui_temp 23
    execute unless data block ~ ~ ~ Items[{Slot:24b}] unless data storage ui:common input.exclusion[{Slot:24}] run scoreboard players set $slot ui_temp 24
    execute unless data block ~ ~ ~ Items[{Slot:25b}] unless data storage ui:common input.exclusion[{Slot:25}] run scoreboard players set $slot ui_temp 25
    execute unless data block ~ ~ ~ Items[{Slot:26b}] unless data storage ui:common input.exclusion[{Slot:26}] run scoreboard players set $slot ui_temp 26

# 音
    execute if score $slot ui_temp matches 0.. run playsound block.note_block.hat block @a ~ ~ ~ 1 1 0