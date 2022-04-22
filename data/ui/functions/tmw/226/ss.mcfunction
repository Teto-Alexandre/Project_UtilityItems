#
    execute as @a[nbt={Inventory:[{Slot:35b,tag:{tmw:{id:226}}}]}] run function ui:tmw/226/ss.lp

# SSロジック維持
    execute if entity @a[nbt={Inventory:[{Slot:35b,tag:{tmw:{id:226}}}]}] run schedule function ui:tmw/226/ss 1t append