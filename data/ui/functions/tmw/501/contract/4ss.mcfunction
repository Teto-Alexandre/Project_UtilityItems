# tick処理
    execute as @a if entity @s[tag=tmw_501_4] at @s run function ui:tmw/501/contract/4act

# SSロジック維持
    execute if entity @a[tag=tmw_501_4] run schedule function ui:tmw/501/contract/4ss 1t append