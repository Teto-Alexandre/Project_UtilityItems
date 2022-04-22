#execute if entity @a[scores={ui_tmw_id=14}] run function ui:tmw/14/lim

#誰かがid:14持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=14}] run function ui:tmw/14/main

#付属品
    #SSロジック始動
    schedule function ui:tmw/14/ss 1t append