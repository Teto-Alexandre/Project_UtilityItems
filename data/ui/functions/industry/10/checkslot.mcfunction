#処理終了時になら何もしない
    scoreboard players set $slot ui_calc1 -1

#各スロットにアイテムが入っているなら後ろのナンバーから順にセット
    execute if data block ~ ~ ~ Items[{Slot:0b}] unless data block ~ ~ ~ Items[{Slot:0b,tag:{ui:{ismenu:1}}}] run scoreboard players set $slot ui_calc1 0
    execute if data block ~ ~ ~ Items[{Slot:1b}] unless data block ~ ~ ~ Items[{Slot:1b,tag:{ui:{ismenu:1}}}] run scoreboard players set $slot ui_calc1 1
    execute if data block ~ ~ ~ Items[{Slot:2b}] unless data block ~ ~ ~ Items[{Slot:2b,tag:{ui:{ismenu:1}}}] run scoreboard players set $slot ui_calc1 2
    execute if data block ~ ~ ~ Items[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:3b,tag:{ui:{ismenu:1}}}] run scoreboard players set $slot ui_calc1 3
    execute if data block ~ ~ ~ Items[{Slot:4b}] unless data block ~ ~ ~ Items[{Slot:4b,tag:{ui:{ismenu:1}}}] run scoreboard players set $slot ui_calc1 4
    execute if data block ~ ~ ~ Items[{Slot:5b}] unless data block ~ ~ ~ Items[{Slot:5b,tag:{ui:{ismenu:1}}}] run scoreboard players set $slot ui_calc1 5
    execute if data block ~ ~ ~ Items[{Slot:6b}] unless data block ~ ~ ~ Items[{Slot:6b,tag:{ui:{ismenu:1}}}] run scoreboard players set $slot ui_calc1 6
    execute if data block ~ ~ ~ Items[{Slot:7b}] unless data block ~ ~ ~ Items[{Slot:7b,tag:{ui:{ismenu:1}}}] run scoreboard players set $slot ui_calc1 7
    execute if data block ~ ~ ~ Items[{Slot:8b}] unless data block ~ ~ ~ Items[{Slot:8b,tag:{ui:{ismenu:1}}}] run scoreboard players set $slot ui_calc1 8
    execute if data block ~ ~ ~ Items[{Slot:9b}] unless data block ~ ~ ~ Items[{Slot:9b,tag:{ui:{ismenu:1}}}] run scoreboard players set $slot ui_calc1 9
    #空白
    #空白
    execute if data block ~ ~ ~ Items[{Slot:12b}] unless data block ~ ~ ~ Items[{Slot:12b,tag:{ui:{ismenu:1}}}] run scoreboard players set $slot ui_calc1 12
    execute if data block ~ ~ ~ Items[{Slot:13b}] unless data block ~ ~ ~ Items[{Slot:13b,tag:{ui:{ismenu:1}}}] run scoreboard players set $slot ui_calc1 13
    execute if data block ~ ~ ~ Items[{Slot:14b}] unless data block ~ ~ ~ Items[{Slot:14b,tag:{ui:{ismenu:1}}}] run scoreboard players set $slot ui_calc1 14

    #スロットの状態変更
    execute if data block ~ ~ ~ Items[{Slot:15b}] unless data block ~ ~ ~ Items[{Slot:15b,tag:{ui:{ismenu:1}}}] run scoreboard players set $slot ui_calc1 15
    execute unless data block ~ ~ ~ Items[{Slot:15b}] if score @s ui_i_item matches 1.. run tag @s add ui_i_putout

    execute if data block ~ ~ ~ Items[{Slot:16b}] unless data block ~ ~ ~ Items[{Slot:16b,tag:{ui:{ismenu:1}}}] run scoreboard players set $slot ui_calc1 16
    execute if data block ~ ~ ~ Items[{Slot:17b}] unless data block ~ ~ ~ Items[{Slot:17b,tag:{ui:{ismenu:1}}}] run scoreboard players set $slot ui_calc1 17
    execute if data block ~ ~ ~ Items[{Slot:18b}] unless data block ~ ~ ~ Items[{Slot:18b,tag:{ui:{ismenu:1}}}] run scoreboard players set $slot ui_calc1 18
    execute if data block ~ ~ ~ Items[{Slot:19b}] unless data block ~ ~ ~ Items[{Slot:19b,tag:{ui:{ismenu:1}}}] run scoreboard players set $slot ui_calc1 19
    execute if data block ~ ~ ~ Items[{Slot:20b}] unless data block ~ ~ ~ Items[{Slot:20b,tag:{ui:{ismenu:1}}}] run scoreboard players set $slot ui_calc1 20
    execute if data block ~ ~ ~ Items[{Slot:21b}] unless data block ~ ~ ~ Items[{Slot:21b,tag:{ui:{ismenu:1}}}] run scoreboard players set $slot ui_calc1 21
    execute if data block ~ ~ ~ Items[{Slot:22b}] unless data block ~ ~ ~ Items[{Slot:22b,tag:{ui:{ismenu:1}}}] run scoreboard players set $slot ui_calc1 22
    execute if data block ~ ~ ~ Items[{Slot:23b}] unless data block ~ ~ ~ Items[{Slot:23b,tag:{ui:{ismenu:1}}}] run scoreboard players set $slot ui_calc1 23
    execute if data block ~ ~ ~ Items[{Slot:24b}] unless data block ~ ~ ~ Items[{Slot:24b,tag:{ui:{ismenu:1}}}] run scoreboard players set $slot ui_calc1 24
    execute if data block ~ ~ ~ Items[{Slot:25b}] unless data block ~ ~ ~ Items[{Slot:25b,tag:{ui:{ismenu:1}}}] run scoreboard players set $slot ui_calc1 25
    execute if data block ~ ~ ~ Items[{Slot:26b}] unless data block ~ ~ ~ Items[{Slot:26b,tag:{ui:{ismenu:1}}}] run scoreboard players set $slot ui_calc1 26
#関係ないアイテムが入っているスロットからアイテムを排出
    execute if score $slot ui_calc1 matches 0..26 run function ui:industry/10/giveback
