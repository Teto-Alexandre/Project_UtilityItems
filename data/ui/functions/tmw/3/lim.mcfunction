#execute if entity @a[scores={ui_tmw_id=3}] run function ui:tmw/3/lim

#誰かがid:3持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=3}] run function ui:tmw/3/main

#付属品
    #SSロジック始動
    schedule function ui:tmw/3/ss1 1t append
    schedule function ui:tmw/3/ss2 1t append