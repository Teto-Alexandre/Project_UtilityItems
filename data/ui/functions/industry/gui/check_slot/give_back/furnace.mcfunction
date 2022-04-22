#排出用の媒体
    summon item ~ ~1 ~ {Item:{id:"stone",Count:1b},Tags:["cs"]}

#媒体にスロットに入っているアイテムデータを書き込む
    execute if score $slot ui_calc1 matches 1 run data modify entity @e[type=item,tag=cs,limit=1] Item set from block ~ ~ ~ Items[{Slot:1b}]
    
#アイテムからタグを取る　これでただのドロップアイテムだ
    tp @e[type=item,tag=cs] @p
    tag @e[type=item,tag=cs] remove cs