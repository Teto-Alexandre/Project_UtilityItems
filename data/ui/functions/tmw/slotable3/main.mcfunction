# シフトを無視する
    tag @s[tag=tmw_drop_s] add tmw_drop_n

# カートリッジの排出
    execute as @s[tag=tmw_drop_n,nbt=!{Inventory:[{Slot:-106b}]}] at @s run function ui:tmw/slotable3/putout

# カートリッジの装填
    execute as @s[tag=tmw_drop_n,nbt={Inventory:[{Slot:-106b,tag:{tmw:{slotable:2}}}]}] at @s run function ui:tmw/slotable3/reload