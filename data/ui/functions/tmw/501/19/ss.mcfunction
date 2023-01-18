# tick処理

    ## 個別実行
    execute as @a if entity @s[tag=tmw_501_19] at @s run function ui:tmw/501/19/tick

    ## 生存 16 色チームが 1 以下なら
    execute if score $world ui_tc matches 2 unless entity @a[tag=tmw_501_19_lobby] if entity @a[tag=tmw_501_19_dead] run function ui:tmw/501/19/functions/check_alive/1.check

# SSロジック維持
    execute if score $tmw_501_19 ui_world matches 1.. run schedule function ui:tmw/501/19/ss 1t append