# シフトを無視する
    tag @s[tag=tmw_drop_s] add tmw_drop_n

# オフハンドに適正アイテムを持っていないなら起動キー消去
    tag @s[tag=tmw_drop_n,nbt=!{Inventory:[{Slot:-106b,tag:{tmw:{slotable:1}}}]},nbt=!{Inventory:[{Slot:-106b,tag:{tmw:{slotable:3}}}]}] remove tmw_drop_n

# カートリッジの装填・置換
    execute as @s[tag=tmw_drop_n,nbt={Inventory:[{Slot:-106b,tag:{tmw:{slotable:1,slot:{tag:{tmw:{slotable:2}}}}}}]}] at @s run function ui:tmw/slotable2/reload
    execute as @s[tag=tmw_drop_n,nbt={Inventory:[{Slot:-106b,tag:{tmw:{slotable:3}}}]}] at @s run function ui:tmw/slotable2/reload3

# カートリッジの装填のみ
    execute as @s[tag=tmw_drop_n,nbt=!{Inventory:[{Slot:-106b,tag:{tmw:{slotable:1,slot:{tag:{tmw:{slotable:2}}}}}}]}] at @s run function ui:tmw/slotable2/putin