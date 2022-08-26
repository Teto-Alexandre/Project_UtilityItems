# tick処理
    execute as @e[nbt={Inventory:[{Slot:103b,tag:{tmw:{id:247}}}]}] at @s run function ui:tmw/247/main

# SSロジック維持
    execute if entity @e[nbt={Inventory:[{Slot:103b,tag:{tmw:{id:247}}}]}] run schedule function ui:tmw/247/ss 1t append