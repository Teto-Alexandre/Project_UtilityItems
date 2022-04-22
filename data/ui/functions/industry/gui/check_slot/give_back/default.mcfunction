#排出用の媒体
    summon item ~ ~1 ~ {Item:{id:"stone",Count:1b},Tags:["cs"]}

#媒体にスロットに入っているアイテムデータを書き込む
    execute if score $slot ui_calc1 matches 0 run data modify entity @e[type=item,tag=cs,limit=1] Item set from block ~ ~ ~ Items[{Slot:0b}]
    execute if score $slot ui_calc1 matches 1 run data modify entity @e[type=item,tag=cs,limit=1] Item set from block ~ ~ ~ Items[{Slot:1b}]
    execute if score $slot ui_calc1 matches 2 run data modify entity @e[type=item,tag=cs,limit=1] Item set from block ~ ~ ~ Items[{Slot:2b}]
    execute if score $slot ui_calc1 matches 3 run data modify entity @e[type=item,tag=cs,limit=1] Item set from block ~ ~ ~ Items[{Slot:3b}]
    execute if score $slot ui_calc1 matches 4 run data modify entity @e[type=item,tag=cs,limit=1] Item set from block ~ ~ ~ Items[{Slot:4b}]
    execute if score $slot ui_calc1 matches 5 run data modify entity @e[type=item,tag=cs,limit=1] Item set from block ~ ~ ~ Items[{Slot:5b}]
    execute if score $slot ui_calc1 matches 6 run data modify entity @e[type=item,tag=cs,limit=1] Item set from block ~ ~ ~ Items[{Slot:6b}]
    execute if score $slot ui_calc1 matches 7 run data modify entity @e[type=item,tag=cs,limit=1] Item set from block ~ ~ ~ Items[{Slot:7b}]
    execute if score $slot ui_calc1 matches 8 run data modify entity @e[type=item,tag=cs,limit=1] Item set from block ~ ~ ~ Items[{Slot:8b}]
    execute if score $slot ui_calc1 matches 9 run data modify entity @e[type=item,tag=cs,limit=1] Item set from block ~ ~ ~ Items[{Slot:9b}]
    execute if score $slot ui_calc1 matches 10 run data modify entity @e[type=item,tag=cs,limit=1] Item set from block ~ ~ ~ Items[{Slot:10b}]
    execute if score $slot ui_calc1 matches 11 run data modify entity @e[type=item,tag=cs,limit=1] Item set from block ~ ~ ~ Items[{Slot:11b}]
    execute if score $slot ui_calc1 matches 12 run data modify entity @e[type=item,tag=cs,limit=1] Item set from block ~ ~ ~ Items[{Slot:12b}]
    execute if score $slot ui_calc1 matches 13 run data modify entity @e[type=item,tag=cs,limit=1] Item set from block ~ ~ ~ Items[{Slot:13b}]
    execute if score $slot ui_calc1 matches 14 run data modify entity @e[type=item,tag=cs,limit=1] Item set from block ~ ~ ~ Items[{Slot:14b}]
    execute if score $slot ui_calc1 matches 15 run data modify entity @e[type=item,tag=cs,limit=1] Item set from block ~ ~ ~ Items[{Slot:15b}]
    execute if score $slot ui_calc1 matches 16 run data modify entity @e[type=item,tag=cs,limit=1] Item set from block ~ ~ ~ Items[{Slot:16b}]
    execute if score $slot ui_calc1 matches 17 run data modify entity @e[type=item,tag=cs,limit=1] Item set from block ~ ~ ~ Items[{Slot:17b}]
    execute if score $slot ui_calc1 matches 18 run data modify entity @e[type=item,tag=cs,limit=1] Item set from block ~ ~ ~ Items[{Slot:18b}]
    execute if score $slot ui_calc1 matches 19 run data modify entity @e[type=item,tag=cs,limit=1] Item set from block ~ ~ ~ Items[{Slot:19b}]
    execute if score $slot ui_calc1 matches 20 run data modify entity @e[type=item,tag=cs,limit=1] Item set from block ~ ~ ~ Items[{Slot:20b}]
    execute if score $slot ui_calc1 matches 21 run data modify entity @e[type=item,tag=cs,limit=1] Item set from block ~ ~ ~ Items[{Slot:21b}]
    execute if score $slot ui_calc1 matches 22 run data modify entity @e[type=item,tag=cs,limit=1] Item set from block ~ ~ ~ Items[{Slot:22b}]
    execute if score $slot ui_calc1 matches 23 run data modify entity @e[type=item,tag=cs,limit=1] Item set from block ~ ~ ~ Items[{Slot:23b}]
    execute if score $slot ui_calc1 matches 24 run data modify entity @e[type=item,tag=cs,limit=1] Item set from block ~ ~ ~ Items[{Slot:24b}]
    execute if score $slot ui_calc1 matches 25 run data modify entity @e[type=item,tag=cs,limit=1] Item set from block ~ ~ ~ Items[{Slot:25b}]
    execute if score $slot ui_calc1 matches 26 run data modify entity @e[type=item,tag=cs,limit=1] Item set from block ~ ~ ~ Items[{Slot:26b}]

#アイテムからタグを取る　これでただのドロップアイテムだ
    tp @e[type=item,tag=cs] @p
    tag @e[type=item,tag=cs] remove cs