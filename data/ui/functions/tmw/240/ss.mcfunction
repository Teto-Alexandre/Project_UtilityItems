# tick処理
    execute as @e[nbt={Inventory:[{tag:{tmw:{id:240}}}]}] at @s run function ui:tmw/240/core/main

# SSロジック維持
    execute if entity @e[nbt={Inventory:[{tag:{tmw:{id:240}}}]}] run schedule function ui:tmw/240/ss 1t append