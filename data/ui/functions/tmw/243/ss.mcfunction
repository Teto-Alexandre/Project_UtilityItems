# tick処理
    execute as @e[nbt={EnderItems:[{Slot:0b,tag:{tmw:{id:243}}}]}] at @s run function ui:tmw/243/core/main

# SSロジック維持
    execute if entity @e[nbt={EnderItems:[{Slot:0b,tag:{tmw:{id:243}}}]}] run schedule function ui:tmw/243/ss 3t replace