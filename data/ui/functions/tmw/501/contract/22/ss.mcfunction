# tick処理

    ## 個別実行
    execute if entity @a[tag=tmw_501_22] as @a[tag=tmw_501_22] at @s run function ui:tmw/501/contract/22/tick

# SSロジック維持
    execute if score $tmw_501_22 ui_world matches 1.. run schedule function ui:tmw/501/contract/22/ss 1t append