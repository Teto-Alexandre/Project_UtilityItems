#execute if entity @a[scores={ui_tmw_id=11}] run function ui:tmw/11/lim

#誰かがid:11持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=11}] run function ui:tmw/11/main
    execute as @a[scores={ui_tmw_id2=11}] run function ui:tmw/11/main

#付属品
    #SSロジック始動
    schedule function ui:tmw/11/ss 1t append