# tick処理
    execute as @a if entity @s[tag=tmw_501_19] at @s run function ui:tmw/501/19/tick

# SSロジック維持
    execute if score $tmw_501_19 ui_world matches 1.. run schedule function ui:tmw/501/19/ss 1t append