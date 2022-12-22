# tick処理
    execute as @a if entity @s[nbt={Inventory:[{tag:{tmw:{id:601}}}]}] at @s run function ui:tmw/601/master
    execute as @a[tag=!tmw601_master] at @s run function ui:tmw/601/none
    tag @a[tag=tmw601_master] remove tmw601_master

# SSロジック維持
    execute if entity @e[nbt={Inventory:[{tag:{tmw:{id:601}}}]}] run schedule function ui:tmw/601/ss 1t append