# シフトを無視する
    tag @s[tag=tmw_drop_s] add tmw_drop_n

# 組み込み
    execute as @s[tag=tmw_drop_n,nbt={Inventory:[{Slot:-106b,tag:{tmw:{id:305}}}]}] at @s run function ui:tmw/225/reload