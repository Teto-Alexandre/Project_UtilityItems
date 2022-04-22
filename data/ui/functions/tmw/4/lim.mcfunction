#execute if entity @a[scores={ui_tmw_id=4}] run function ui:tmw/4/lim

#誰かがid:4持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=4}] run function ui:tmw/4/main

#付属品
    #SSロジック始動
    schedule function ui:tmw/4/ss 1t append
    execute as @e[tag=tmw_4_2] at @s run function ui:tmw/4/4_2